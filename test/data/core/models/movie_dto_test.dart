import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/data/core/models/movie_dto.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';

void main() {
  final validMovie = Movie.summary(
    id: 'tt1234567',
    title: 'Test Movie',
    year: '2021',
    posterUrl: 'https://example.com/poster.jpg',
    type: 'movie',
  );

  final dto = MovieDTO.fromDomain(validMovie);
  final json = dto.toJson();

  test(
    'fromDomain produces a DTO matching manual construction',
    () {
      // Act
      final result = MovieDTO.fromDomain(validMovie);

      // Assert
      expect(result, equals(dto));
    },
  );

  test(
    'toDomain converts back to the original Movie entity',
    () {
      // Act
      final result = dto.toDomain();

      // Assert
      expect(result, equals(validMovie));
    },
  );

  test(
    'fromJson reconstructs the DTO correctly',
    () {
      // Act
      final result = MovieDTO.fromJson(json);

      // Assert
      expect(result, equals(dto));
    },
  );

  test(
    'toJson produces the expected JSON map',
    () {
      // Act
      final result = dto.toJson();

      // Assert
      expect(result, equals(json));
    },
  );
}
