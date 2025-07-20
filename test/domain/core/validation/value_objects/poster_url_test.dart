import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/poster_url.dart';

void main() {
  group(
    'PosterUrl ValueObject – success',
    () {
      test(
        'valid http URL',
        () {
          // Arrange
          const input = 'http://example.com/image.png';

          // Act
          final object = PosterUrl(input);

          // Assert
          expect(object.value, right(input));
        },
      );

      test(
        'valid https URL with query',
        () {
          // Arrange
          const input = 'https://domain.com/path?foo=bar';

          // Act
          final object = PosterUrl(input);

          // Assert
          expect(object.value, right(input));
        },
      );
    },
  );

  group(
    'PosterUrl ValueObject – failure',
    () {
      test(
        'empty string yields invalidUrl',
        () {
          // Arrange
          const input = '';

          // Act
          final object = PosterUrl(input);

          // Assert
          expect(
            object.value,
            left(const Failure<String>.invalidUrl(failedValue: input)),
          );
        },
      );

      test(
        'missing scheme yields invalidUrl',
        () {
          // Arrange
          const input = 'www.example.com/image.jpg';

          // Act
          final object = PosterUrl(input);

          // Assert
          expect(
            object.value,
            left(
              const Failure<String>.invalidUrl(
                failedValue: 'www.example.com/image.jpg',
              ),
            ),
          );
        },
      );
    },
  );
}
