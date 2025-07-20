import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/data/core/clients/omdb_api_client.dart';
import 'package:movie_search_challenge/data/search/production_search_repository.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';

import 'production_search_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<OmdbApiClient>()])
void main() {
  late MockOmdbApiClient mockApiClient;
  late ProductionSearchRepository repository;

  const validTitleString = 'Batman';
  final validTitle = MovieTitle(validTitleString);

  final rawJson = {
    'Search': [
      {
        'imdbID': 'tt1111111',
        'Title': 'Movie One',
        'Year': '2001',
        'Poster': 'https://example.com/1.jpg',
        'Type': 'movie',
      },
      {
        'imdbID': 'tt2222222',
        'Title': 'Movie Two',
        'Year': '2002',
        'Poster': 'https://example.com/2.jpg',
        'Type': 'movie',
      },
    ],
  };

  final expectedMovies = [
    Movie.summary(
      id: 'tt1111111',
      title: 'Movie One',
      year: '2001',
      posterUrl: 'https://example.com/1.jpg',
      type: 'movie',
    ),
    Movie.summary(
      id: 'tt2222222',
      title: 'Movie Two',
      year: '2002',
      posterUrl: 'https://example.com/2.jpg',
      type: 'movie',
    ),
  ];

  setUp(
    () {
      mockApiClient = MockOmdbApiClient();
      repository = ProductionSearchRepository(mockApiClient);
    },
  );

  test(
    'returns list of Movies on successful API call',
    () async {
      // Arrange
      when(
        mockApiClient.searchRaw(
          title: validTitleString,
          page: 1,
        ),
      ).thenAnswer((_) async => rawJson);

      // Act
      final result = await repository.search(title: validTitle, page: 1);

      // Assert
      expect(result.isRight(), isTrue);
      result.fold(
        (failure) => fail('Expected right, got $failure'),
        (movies) => expect(movies, equals(expectedMovies)),
      );
      verify(
        mockApiClient.searchRaw(
          title: validTitleString,
          page: 1,
        ),
      ).called(1);
    },
  );

  test(
    'returns UnexpectedError on exception from API client',
    () async {
      // Arrange
      when(
        mockApiClient.searchRaw(
          title: validTitleString,
          page: 1,
        ),
      ).thenThrow(Exception('network fail'));

      // Act
      final result = await repository.search(title: validTitle, page: 1);

      // Assert
      expect(
        result,
        isA<Left<Failure, List<Movie>>>().having(
          (left) => left.fold((failure) => failure, (_) => null),
          'failure',
          isA<UnexpectedError>(),
        ),
      );
    },
  );
}
