import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';

void main() {
  group(
    'MovieId ValueObject – success',
    () {
      test(
        '7-digit IMDb ID',
        () {
          // Arrange
          const input = 'tt1234567';

          // Act
          final object = MovieId(input);

          // Assert
          expect(object.value, right(input));
        },
      );

      test(
        '8-digit IMDb ID',
        () {
          // Arrange
          const input = 'tt01234567';

          // Act
          final object = MovieId(input);

          // Assert
          expect(object.value, right(input));
        },
      );
    },
  );

  group(
    'MovieId ValueObject – failure',
    () {
      test(
        'missing "tt" prefix yields invalidMovieId',
        () {
          // Arrange
          const input = '1234567';

          // Act
          final object = MovieId(input);

          // Assert
          expect(
            object.value,
            left(const Failure<String>.invalidMovieId(failedValue: '1234567')),
          );
        },
      );

      test(
        'too short yields invalidMovieId',
        () {
          // Arrange
          const input = 'tt123';

          // Act
          final object = MovieId(input);

          // Assert
          expect(
            object.value,
            left(const Failure<String>.invalidMovieId(failedValue: input)),
          );
        },
      );

      test(
        'empty string yields invalidMovieId',
        () {
          // Arrange
          const input = '';

          // Act
          final object = MovieId(input);

          // Assert
          expect(
            object.value,
            left(const Failure<String>.invalidMovieId(failedValue: input)),
          );
        },
      );
    },
  );
}
