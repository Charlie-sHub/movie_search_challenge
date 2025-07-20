import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/search/search_interface.dart';

import 'search_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SearchRepositoryInterface>()])
void main() {
  late MockSearchRepositoryInterface mockRepo;
  late SearchBloc searchBloc;

  const testTitle = 'Test';
  final movie1 = Movie.summary(
    id: 'tt1111111',
    title: testTitle,
    year: '2001',
    posterUrl: 'https://example.com/1.jpg',
  );
  final movie2 = Movie.summary(
    id: 'tt2222222',
    title: testTitle,
    year: '2002',
    posterUrl: 'https://example.com/2.jpg',
  );
  const failure = Failure.serverError(errorMessage: 'Oops');

  setUp(
    () {
      mockRepo = MockSearchRepositoryInterface();
      searchBloc = SearchBloc(mockRepo);
    },
  );

  group(
    'SearchBloc – QueryChanged',
    () {
      blocTest<SearchBloc, SearchState>(
        'updates title VO on QueryChanged',
        build: () => searchBloc,
        act: (bloc) => bloc.add(
          const SearchEvent.queryChanged(title: 'Some Title'),
        ),
        expect: () => [
          SearchState.initial().copyWith(
            title: MovieTitle('Some Title'),
          ),
        ],
      );
    },
  );

  group(
    'SearchBloc – SearchRequested',
    () {
      blocTest<SearchBloc, SearchState>(
        'emits [loading, success] when title valid and repo returns movies',
        build: () {
          when(
            mockRepo.search(title: MovieTitle(testTitle), page: 1),
          ).thenAnswer((_) async => right([movie1, movie2]));
          return searchBloc;
        },
        act: (bloc) {
          bloc
            ..add(const SearchEvent.queryChanged(title: testTitle))
            ..add(const SearchEvent.searchRequested());
        },
        expect: () => [
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
          ),
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            isLoading: true,
            failureOption: none(),
          ),
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            isLoading: false,
            results: [movie1, movie2],
            hasReachedEnd: true,
            failureOption: none(),
          ),
        ],
        verify: (_) {
          verify(
            mockRepo.search(title: MovieTitle(testTitle), page: 1),
          ).called(1);
        },
      );

      blocTest<SearchBloc, SearchState>(
        'emits [loading, failure] when title valid and repo returns failure',
        build: () {
          when(
            mockRepo.search(title: MovieTitle(testTitle), page: 1),
          ).thenAnswer((_) async => left(failure));
          return searchBloc;
        },
        act: (bloc) {
          bloc
            ..add(const SearchEvent.queryChanged(title: testTitle))
            ..add(const SearchEvent.searchRequested());
        },
        expect: () => [
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
          ),
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            isLoading: true,
            failureOption: none(),
          ),
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            isLoading: false,
            results: const [],
            hasReachedEnd: false,
            failureOption: some(failure),
          ),
        ],
      );

      blocTest<SearchBloc, SearchState>(
        'does nothing beyond stopping loading when title invalid',
        build: () => searchBloc,
        act: (bloc) => bloc.add(const SearchEvent.searchRequested()),
        expect: () => [
          SearchState.initial().copyWith(
            isLoading: true,
            failureOption: none(),
          ),
          SearchState.initial().copyWith(isLoading: false),
        ],
      );
    },
  );

  group(
    'SearchBloc – LoadNextPage',
    () {
      blocTest<SearchBloc, SearchState>(
        'appends results on success',
        build: () {
          when(
            mockRepo.search(title: MovieTitle(testTitle), page: 2),
          ).thenAnswer((_) async => right([movie2]));
          return searchBloc;
        },
        seed: () => SearchState.initial().copyWith(
          title: MovieTitle(testTitle),
          results: [movie1],
          page: 1,
          hasReachedEnd: false,
        ),
        act: (bloc) => bloc.add(const SearchEvent.loadNextPage()),
        expect: () => [
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            results: [movie1],
            page: 1,
            isLoading: true,
          ),
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            results: [movie1, movie2],
            page: 2,
            isLoading: false,
            hasReachedEnd: true,
          ),
        ],
        verify: (_) => verify(
          mockRepo.search(title: MovieTitle(testTitle), page: 2),
        ).called(1),
      );

      blocTest<SearchBloc, SearchState>(
        'emits failure on pagination error',
        build: () {
          when(
            mockRepo.search(title: MovieTitle(testTitle), page: 2),
          ).thenAnswer((_) async => left(failure));
          return searchBloc;
        },
        seed: () => SearchState.initial().copyWith(
          title: MovieTitle(testTitle),
          results: [movie1],
          page: 1,
          hasReachedEnd: false,
        ),
        act: (bloc) => bloc.add(const SearchEvent.loadNextPage()),
        expect: () => [
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            results: [movie1],
            page: 1,
            isLoading: true,
          ),
          SearchState.initial().copyWith(
            title: MovieTitle(testTitle),
            results: [movie1],
            page: 1,
            isLoading: false,
            failureOption: some(failure),
          ),
        ],
      );
    },
  );
}
