import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_year.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/poster_url.dart';

void main() {
  final validMovie = Movie.summary(
    id: 'tt1234567',
    title: 'Valid Title',
    year: '2000',
    posterUrl: 'https://example.com/poster.png',
  );

  group(
    'Movie entity – success',
    () {
      test(
        'is valid when all inputs are valid',
        () {
          // Act
          final isValid = validMovie.isValid;

          // Assert
          expect(isValid, true);
        },
      );

      test(
        'failureOption is None when valid',
        () {
          // Act
          final failureOpt = validMovie.failureOption;

          // Assert
          expect(failureOpt, none());
        },
      );
    },
  );

  group(
    'Movie entity – failure',
    () {
      final invalidIdMovie = validMovie.copyWith(
        id: MovieId('invalid'),
      );
      final invalidTitleMovie = validMovie.copyWith(
        title: MovieTitle(''),
      );
      test(
        'invalid id makes movie invalid',
        () {
          // Act
          final isValid = invalidIdMovie.isValid;

          // Assert
          expect(isValid, false);
        },
      );

      test(
        'invalid title makes movie invalid',
        () {
          // Act
          final isValid = invalidTitleMovie.isValid;

          // Assert
          expect(isValid, false);
        },
      );

      test(
        'invalid year makes movie invalid',
        () {
          // Arrange
          final invalidYearMovie = validMovie.copyWith(
            year: MovieYear('not a year'),
          );

          // Act
          final isValid = invalidYearMovie.isValid;

          // Assert
          expect(isValid, false);
        },
      );

      test(
        'invalid poster URL makes movie invalid',
        () {
          // Arrange
          final invalidPosterMovie = validMovie.copyWith(
            posterUrl: PosterUrl('not a url'),
          );

          // Act
          final isValid = invalidPosterMovie.isValid;

          // Assert
          expect(isValid, false);
        },
      );

      test(
        'failureOption returns Some on invalid id',
        () {
          // Act
          final opt = invalidIdMovie.failureOption;

          // Assert
          expect(opt, isA<Some<Failure>>());
        },
      );

      test(
        'failureOption returns Some on invalid title',
        () {
          // Act
          final opt = invalidTitleMovie.failureOption;

          // Assert
          expect(opt, isA<Some<Failure>>());
        },
      );
    },
  );
}
