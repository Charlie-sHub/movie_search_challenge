import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';

/// Validates that [url] is a well-formed URI
Either<Failure<String>, String> validateUrl(String url) {
  final trim = url.trim();
  final uri = Uri.tryParse(trim);
  if (uri != null && uri.hasScheme && uri.isAbsolute) {
    return right(trim);
  } else {
    return left(Failure.invalidUrl(failedValue: url));
  }
}
