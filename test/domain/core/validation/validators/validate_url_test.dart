import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_url.dart';

void main() {
  group(
    'validateUrl – success',
    () {
      test(
        'http URL',
        () {
          // Arrange
          const input = 'http://example.com';

          // Act
          final result = validateUrl(input);

          // Assert
          expect(result, right(input));
        },
      );

      test(
        'https URL with path',
        () {
          // Arrange
          const input = 'https://sub.domain.com/path?query=1';

          // Act
          final result = validateUrl(input);

          // Assert
          expect(result, right(input));
        },
      );
    },
  );

  group(
    'validateUrl – failure',
    () {
      test(
        'empty string',
        () {
          // Arrange
          const input = '';

          // Act
          final result = validateUrl(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidUrl(failedValue: input),
            ),
          );
        },
      );

      test(
        'missing scheme',
        () {
          // Arrange
          const input = 'www.example.com';

          // Act
          final result = validateUrl(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidUrl(failedValue: input),
            ),
          );
        },
      );

      test(
        'malformed URI',
        () {
          // Arrange
          const input = '%http://';

          // Act
          final result = validateUrl(input);

          // Assert
          expect(
            result,
            left<Failure<String>, String>(
              const Failure.invalidUrl(failedValue: input),
            ),
          );
        },
      );
    },
  );
}
