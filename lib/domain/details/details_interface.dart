import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';

/// Repository interface for the details feature
abstract interface class DetailsRepositoryInterface {
  /// Fetches full details for a movie with the given [id]
  Future<Either<Failure<dynamic>, Movie>> getMovieDetails({
    required MovieId id,
  });
}
