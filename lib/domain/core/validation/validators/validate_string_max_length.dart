import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';

/// Validates that a string does not exceed [maxLength]
Either<Failure<String>, String> validateStringMaxLength({
  required String input,
  required int maxLength,
}) {
  final trim = input.trim();
  if (trim.length <= maxLength) {
    return right(trim);
  } else {
    return left(
      Failure.stringExceedsLength(
        failedValue: trim,
        maxLength: maxLength,
      ),
    );
  }
}
