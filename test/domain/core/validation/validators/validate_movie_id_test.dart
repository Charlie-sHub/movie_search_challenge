import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_movie_id.dart';

void main() {
  group(
    'validateMovieId – success',
    () {
      test(
        '7‑digit IMDb ID',
        () {
          // Arrange
          const input = 'tt1234567';

          // Act
          final result = validateMovieId(input);

          // Assert
          expect(result, right(input));
        },
      );

      test(
        '8‑digit IMDb ID',
        () {
          // Arrange
          const input = 'tt01234567';

          // Act
          final result = validateMovieId(input);

          // Assert
          expect(result, right(input));
        },
      );
    },
  );

  group(
    'validateMovieId – failure',
    () {
      test(
        'missing "tt" prefix',
        () {
          // Arrange
          const input = '1234567';

          // Act
          final result = validateMovieId(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidMovieId(failedValue: input),
            ),
          );
        },
      );

      test(
        'too short',
        () {
          // Arrange
          const input = 'tt123';

          // Act
          final result = validateMovieId(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidMovieId(failedValue: input),
            ),
          );
        },
      );

      test(
        'empty string',
        () {
          // Arrange
          const input = '';

          // Act
          final result = validateMovieId(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidMovieId(failedValue: input),
            ),
          );
        },
      );
    },
  );
}
