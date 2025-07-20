import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';

/// Validates that [yearString] is a 4-digit year
/// between 1888 and current year + 10
Either<Failure<String>, String> validateMovieYear(String yearString) {
  final trim = yearString.trim();
  final currentYear = DateTime.now().year;
  final year = int.tryParse(trim);
  if (year != null && year >= 1888 && year <= currentYear + 10) {
    return right(trim);
  } else {
    return left(Failure.invalidYear(failedValue: yearString));
  }
}
