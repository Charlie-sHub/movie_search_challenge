import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_movie_year.dart';

void main() {
  final currentYear = DateTime.now().year;

  group(
    'validateMovieYear – success',
    () {
      test(
        'valid four‑digit year within range',
        () {
          // Arrange
          const yearString = '2000';

          // Act
          final result = validateMovieYear(yearString);

          // Assert
          expect(result, right(yearString));
        },
      );

      test(
        'lower bound (1888) is allowed',
        () {
          // Arrange
          const yearString = '1888';

          // Act
          final result = validateMovieYear(yearString);

          // Assert
          expect(result, right(yearString));
        },
      );

      test(
        'upper bound (current + 1) is allowed',
        () {
          // Arrange
          final yearString = '${currentYear + 1}';

          // Act
          final result = validateMovieYear(yearString);

          // Assert
          expect(result, right(yearString));
        },
      );
    },
  );

  group(
    'validateMovieYear – failure',
    () {
      test(
        'non‑numeric string',
        () {
          // Arrange
          const failedValue = 'not a year';

          // Act
          final result = validateMovieYear(failedValue);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidYear(failedValue: failedValue),
            ),
          );
        },
      );

      test(
        'too early (before 1888)',
        () {
          // Arrange
          const failedValue = '1800';

          // Act
          final result = validateMovieYear(failedValue);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidYear(failedValue: failedValue),
            ),
          );
        },
      );

      test(
        'too late (beyond current + 10)',
        () {
          // Arrange
          final failedValue = '${currentYear + 20}';

          // Act
          final result = validateMovieYear(failedValue);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              Failure.invalidYear(failedValue: failedValue),
            ),
          );
        },
      );
    },
  );
}
