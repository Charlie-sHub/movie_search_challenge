import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:movie_search_challenge/data/core/clients/omdb_api_client.dart';
import 'package:movie_search_challenge/data/details/production_details_repository.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_year.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/poster_url.dart';

import 'production_details_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<OmdbApiClient>()])
void main() {
  late MockOmdbApiClient mockApiClient;
  late MovieDetailsRepositoryImpl repository;

  const validIdString = 'tt1234567';
  final validId = MovieId(validIdString);

  final validJson = {
    'imdbID': validIdString,
    'Title': 'Test Movie',
    'Year': '2021',
    'Poster': 'https://example.com/poster.jpg',
    'Type': 'movie',
    'Plot': 'Some plot',
    'Director': 'Jane Doe',
    'Actors': 'Actor A, Actor B',
    'Genre': 'Drama',
  };

  final expectedMovie = Movie(
    id: validId,
    title: MovieTitle('Test Movie'),
    year: MovieYear('2021'),
    posterUrl: PosterUrl('https://example.com/poster.jpg'),
    type: 'movie',
    plot: 'Some plot',
    director: 'Jane Doe',
    actors: 'Actor A, Actor B',
    genre: 'Drama',
  );

  setUp(
    () {
      mockApiClient = MockOmdbApiClient();
      repository = MovieDetailsRepositoryImpl(mockApiClient);
    },
  );

  test(
    'returns invalidMovieId failure for bad ID',
    () async {
      // Arrange
      final invalidId = MovieId('bad');

      // Act
      final result = await repository.getMovieDetails(id: invalidId);

      // Assert
      expect(result.isLeft(), isTrue);
      result.fold(
        (failure) => expect(
          failure,
          const Failure<String>.invalidMovieId(failedValue: 'bad'),
        ),
        (_) => fail('Expected a Failure.invalidMovieId'),
      );
    },
  );

  test(
    'returns Movie on successful API call',
    () async {
      // Arrange
      when(
        mockApiClient.getDetailsRaw(id: validIdString),
      ).thenAnswer((_) async => validJson);

      // Act
      final result = await repository.getMovieDetails(id: validId);

      // Assert
      expect(result.isRight(), isTrue);
      result.fold(
        (_) => fail('Expected a Movie, not a failure'),
        (movie) => expect(movie, expectedMovie),
      );
      verify(mockApiClient.getDetailsRaw(id: validIdString)).called(1);
    },
  );

  test(
    'returns unexpectedError when API throws',
    () async {
      // Arrange
      when(mockApiClient.getDetailsRaw(id: validIdString)).thenThrow(
        Exception('network down'),
      );

      // Act
      final result = await repository.getMovieDetails(id: validId);

      // Assert
      expect(result.isLeft(), isTrue);
    },
  );
}
