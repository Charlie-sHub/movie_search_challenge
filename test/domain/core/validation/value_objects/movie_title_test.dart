import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';

void main() {
  group(
    'MovieTitle ValueObject – success',
    () {
      test(
        'non-empty title under max length',
        () {
          // Arrange
          const input = 'Inception';

          // Act
          final object = MovieTitle(input);

          // Assert
          expect(object.value, right(input));
        },
      );

      test(
        'trims whitespace before validating',
        () {
          // Arrange
          const raw = '  The Matrix  ';

          // Act
          final object = MovieTitle(raw);

          // Assert
          expect(object.value, right('The Matrix'));
        },
      );

      test(
        'exactly at max length is allowed',
        () {
          // Arrange
          final input = 'a' * MovieTitle.maxLength;

          // Act
          final object = MovieTitle(input);

          // Assert
          expect(object.value, right(input));
        },
      );
    },
  );

  group(
    'MovieTitle ValueObject – failure',
    () {
      test(
        'empty string yields EmptyString failure',
        () {
          // Arrange
          const input = '';

          // Act
          final object = MovieTitle(input);

          // Assert
          expect(
            object.value,
            left(const Failure<String>.emptyString(failedValue: input)),
          );
        },
      );

      test(
        'whitespace-only string yields EmptyString failure',
        () {
          // Arrange
          const input = '    ';

          // Act
          final object = MovieTitle(input);

          // Assert
          expect(
            object.value,
            left(const Failure<String>.emptyString(failedValue: '')),
          );
        },
      );

      test(
        'string longer than max length yields StringExceedsLength failure',
        () {
          // Arrange
          final input = 'a' * (MovieTitle.maxLength + 1);

          // Act
          final object = MovieTitle(input);

          // Assert
          expect(
            object.value,
            left(
              Failure<String>.stringExceedsLength(
                failedValue: input,
                maxLength: MovieTitle.maxLength,
              ),
            ),
          );
        },
      );
    },
  );
}
