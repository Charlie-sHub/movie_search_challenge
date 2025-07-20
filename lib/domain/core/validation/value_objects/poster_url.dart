import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_url.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/value_object.dart';

/// URL for a movie poster
class PosterUrl extends ValueObject<String> {
  const PosterUrl._(this.value);

  /// Constructs a [PosterUrl], validating it's a proper URL
  factory PosterUrl(String input) => PosterUrl._(
        validateUrl(input),
      );

  @override
  final Either<Failure<String>, String> value;

  @override
  List<Object?> get props => [value];
}
