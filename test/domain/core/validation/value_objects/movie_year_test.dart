import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_year.dart';

void main() {
  final currentYear = DateTime.now().year;

  group(
    'MovieYear ValueObject – success',
    () {
      test(
        'valid numeric year within range',
        () {
          // Arrange
          const input = '2000';

          // Act
          final object = MovieYear(input);

          // Assert
          expect(object.value, right(input));
        },
      );

      test(
        'lower bound (1888) is allowed',
        () {
          // Arrange
          const input = '1888';

          // Act
          final object = MovieYear(input);

          // Assert
          expect(object.value, right(input));
        },
      );

      test(
        'upper bound (currentYear + 1) is allowed',
        () {
          // Arrange
          final input = '${currentYear + 1}';

          // Act
          final object = MovieYear(input);

          // Assert
          expect(object.value, right(input));
        },
      );
    },
  );

  group(
    'MovieYear ValueObject – failure',
    () {
      test(
        'non-numeric string yields invalidYear',
        () {
          // Arrange
          const input = 'not numeric';

          // Act
          final object = MovieYear(input);

          // Assert
          expect(
            object.value,
            left(const Failure.invalidYear(failedValue: input)),
          );
        },
      );

      test(
        'too early year yields invalidYear',
        () {
          // Arrange
          const input = '1800';

          // Act
          final object = MovieYear(input);

          // Assert
          expect(
            object.value,
            left(const Failure.invalidYear(failedValue: input)),
          );
        },
      );

      test(
        'too late year yields invalidYear',
        () {
          // Arrange
          final input = '${DateTime.now().year + 20}';

          // Act
          final object = MovieYear(input);

          // Assert
          expect(
            object.value,
            left(Failure.invalidYear(failedValue: input)),
          );
        },
      );
    },
  );
}
