import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_movie_year.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/value_object.dart';

/// Movie year value object
class MovieYear extends ValueObject<String> {
  const MovieYear._(this.value);

  /// Constructs a [MovieYear], validating format and range
  factory MovieYear(String input) => MovieYear._(
        validateMovieYear(input),
      );

  @override
  final Either<Failure<String>, String> value;

  @override
  List<Object?> get props => [value];
}
