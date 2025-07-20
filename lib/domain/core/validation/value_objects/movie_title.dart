import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_non_empty_string.dart';
import 'package:movie_search_challenge/domain/core/validation/validators/validate_string_max_length.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/value_object.dart';

/// Movie title value object
class MovieTitle extends ValueObject<String> {
  const MovieTitle._(this.value);

  /// Constructs a [MovieTitle], ensuring it is non-empty and within length
  factory MovieTitle(String input) => MovieTitle._(
        validateNonEmptyString(input).flatMap(
          (string) => validateStringMaxLength(
            input: string,
            maxLength: maxLength,
          ),
        ),
      );

  /// Maximum length of a movie title
  static const int maxLength = 200;

  @override
  final Either<Failure<String>, String> value;

  @override
  List<Object?> get props => [value];
}
