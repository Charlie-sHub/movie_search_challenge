import 'package:dartz/dartz.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';

/// Validates that [id] matches IMDb ID pattern (e.g. 'tt1234567')
Either<Failure<String>, String> validateMovieId(String id) {
  const pattern = r'^tt\d{7,8}$';
  final trim = id.trim();
  if (RegExp(pattern).hasMatch(trim)) {
    return right(trim);
  } else {
    return left(Failure.invalidMovieId(failedValue: id));
  }
}
