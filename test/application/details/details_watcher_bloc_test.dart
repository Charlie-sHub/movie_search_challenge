import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/details/details_watcher_bloc.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/details/details_interface.dart';

import 'details_watcher_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DetailsRepositoryInterface>()])
void main() {
  late MockDetailsRepositoryInterface mockRepository;
  late DetailsWatcherBloc bloc;

  final testMovie = Movie.summary(
    id: 'tt1234567',
    title: 'Test Movie',
    year: '2020',
    posterUrl: 'https://example.com/poster.jpg',
  );
  const testFailure = Failure.serverError(errorMessage: 'Server error');

  setUp(
    () {
      mockRepository = MockDetailsRepositoryInterface();
      bloc = DetailsWatcherBloc(mockRepository);
    },
  );

  blocTest<DetailsWatcherBloc, DetailsWatcherState>(
    'emits [loadInProgress, loadSuccess] when repository returns a movie',
    build: () {
      when(mockRepository.getMovieDetails(id: testMovie.id)).thenAnswer(
        (_) async => right(testMovie),
      );
      return bloc;
    },
    act: (bloc) => bloc.add(
      DetailsWatcherEvent.initialized(
        id: MovieId('tt1234567'),
      ),
    ),
    expect: () => [
      const DetailsWatcherState.loadInProgress(),
      DetailsWatcherState.loadSuccess(testMovie),
    ],
    verify: (_) {
      verify(
        mockRepository.getMovieDetails(id: MovieId('tt1234567')),
      ).called(1);
    },
  );

  blocTest<DetailsWatcherBloc, DetailsWatcherState>(
    'emits [loadInProgress, loadFailure] when repository returns a failure',
    build: () {
      when(mockRepository.getMovieDetails(id: testMovie.id)).thenAnswer(
        (_) async => left(testFailure),
      );
      return bloc;
    },
    act: (bloc) => bloc.add(
      DetailsWatcherEvent.initialized(id: MovieId('tt1234567')),
    ),
    expect: () => [
      const DetailsWatcherState.loadInProgress(),
      const DetailsWatcherState.loadFailure(testFailure),
    ],
    verify: (_) {
      verify(
        mockRepository.getMovieDetails(id: MovieId('tt1234567')),
      ).called(1);
    },
  );
}
