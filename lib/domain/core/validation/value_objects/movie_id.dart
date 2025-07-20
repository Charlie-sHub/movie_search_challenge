import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_movie_id.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/value_object.dart';

/// IMDb movie ID value object (e.g., tt1234567)
class MovieId extends ValueObject<String> {
  const MovieId._(this.value);

  /// Constructs a [MovieId], ensuring it matches the IMDb pattern
  factory MovieId(String input) => MovieId._(
        validateMovieId(input),
      );

  @override
  final Either<Failure<String>, String> value;

  @override
  List<Object?> get props => [value];
}
