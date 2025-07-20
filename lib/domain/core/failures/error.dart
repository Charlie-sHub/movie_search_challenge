import 'package:movie_search_challenge/domain/core/failures/failure.dart';

/// [UnexpectedValueError] is thrown when a value object contains
/// an invalid value
class UnexpectedValueError extends Error {
  /// Constructs an [UnexpectedValueError] with the given [Failure]
  UnexpectedValueError(this.valueFailure);

  /// The [Failure] that caused this error
  final Failure<dynamic> valueFailure;

  @override
  String toString() {
    const message = 'Unexpected value encountered at an unrecoverable point';
    return Error.safeToString('$message: $valueFailure');
  }
}
