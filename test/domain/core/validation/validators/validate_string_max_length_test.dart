import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_string_max_length.dart';

void main() {
  const maxLength = 5;

  group(
    'validateStringMaxLength – success',
    () {
      test(
        'empty string is allowed',
        () {
          // Arrange
          const input = '';

          // Act
          final result = validateStringMaxLength(
            input: input,
            maxLength: maxLength,
          );

          // Assert
          expect(result, right(input));
        },
      );

      test(
        'shorter than max is allowed',
        () {
          // Arrange
          const input = 'abc';

          // Act
          final result = validateStringMaxLength(
            input: input,
            maxLength: maxLength,
          );

          // Assert
          expect(result, right(input));
        },
      );

      test(
        'exactly max is allowed',
        () {
          // Arrange
          const input = 'abcde';

          // Act
          final result = validateStringMaxLength(
            input: input,
            maxLength: maxLength,
          );

          // Assert
          expect(result, right(input));
        },
      );

      test(
        'trims whitespace and still within max',
        () {
          // Arrange
          const input = 'abcde  ';

          // Act
          final result = validateStringMaxLength(
            input: input,
            maxLength: maxLength,
          );

          // Assert
          expect(result, right(input.trim()));
        },
      );
    },
  );

  group(
    'validateStringMaxLength – failure',
    () {
      test(
        'longer than max returns stringExceedsLength',
        () {
          // Arrange
          const input = 'too long';

          // Act
          final result = validateStringMaxLength(
            input: input,
            maxLength: maxLength,
          );

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.stringExceedsLength(
                failedValue: input,
                maxLength: maxLength,
              ),
            ),
          );
        },
      );
    },
  );
}
