import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';

/// Repository interface for the search feature
abstract interface class SearchRepositoryInterface {
  /// Searches for movies matching the given [title]
  /// returning a list of summary movies
  Future<Either<Failure<dynamic>, List<Movie>>> search({
    required MovieTitle title,
    required int page,
  });
}
