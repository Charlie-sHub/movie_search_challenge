import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';

/// Validates that a string is non-empty (after trimming)
Either<Failure<String>, String> validateNonEmptyString(String input) {
  final trim = input.trim();
  if (trim.isNotEmpty) {
    return right(trim);
  } else {
    return left(Failure.emptyString(failedValue: trim));
  }
}
