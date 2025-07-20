import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_non_empty_string.dart';

void main() {
  group(
    'validateNonEmptyString – success',
    () {
      test(
        'returns trimmed string when input has surrounding whitespace',
        () {
          // Arrange
          const input = '  hello  ';

          // Act
          final result = validateNonEmptyString(input);

          // Assert
          expect(result, right('hello'));
        },
      );

      test(
        'returns original string when already trimmed',
        () {
          // Arrange
          const input = 'world';

          // Act
          final result = validateNonEmptyString(input);

          // Assert
          expect(result, right('world'));
        },
      );
    },
  );

  group(
    'validateNonEmptyString – failure',
    () {
      test(
        'empty string returns EmptyString failure',
        () {
          // Arrange
          const input = '';

          // Act
          final result = validateNonEmptyString(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.emptyString(failedValue: ''),
            ),
          );
        },
      );

      test(
        'string of only whitespace returns EmptyString failure',
        () {
          // Arrange
          const input = '   ';

          // Act
          final result = validateNonEmptyString(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.emptyString(failedValue: ''),
            ),
          );
        },
      );
    },
  );
}
