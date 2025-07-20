import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// [Failure] represents errors and validation failures across the domain layer
@freezed
sealed class Failure<T> with _$Failure<T> {
  // --- Value failures (input validation) ---
  /// Empty string where a non-empty value is required
  const factory Failure.emptyString({
    required String failedValue,
  }) = EmptyString<T>;

  /// String exceeds allowed length
  const factory Failure.stringExceedsLength({
    required String failedValue,
    required int maxLength,
  }) = StringExceedsLength<T>;

  /// Invalid year (e.g., non-numeric or out of range)
  const factory Failure.invalidYear({
    required T failedValue,
  }) = InvalidYear<T>;

  /// Invalid movie identifier (e.g., malformed IMDb ID)
  const factory Failure.invalidMovieId({
    required String failedValue,
  }) = InvalidMovieId<T>;

  /// Invalid URL (e.g., malformed URI)
  const factory Failure.invalidUrl({
    required String failedValue,
  }) = InvalidUrl<T>;

  // --- Infrastructure failures (remote/cache) ---
  /// Generic server or network error
  const factory Failure.serverError({
    required String errorMessage,
  }) = ServerError<T>;

  /// Cache error when reading or writing local data
  const factory Failure.cacheError({
    required String errorMessage,
  }) = CacheError<T>;

  // --- Unexpected/unclassified errors ---
  /// An unforeseen error
  const factory Failure.unexpectedError({
    required String errorMessage,
  }) = UnexpectedError<T>;
}

/// Extension for [Failure] to convert to user-friendly messages
extension FailureX on Failure<dynamic> {
  /// Converts a [Failure] to a user-friendly message
  String get errorString => map(
    emptyString: (_) => 'This field can’t be empty.',
    stringExceedsLength: (f) => 'Must be at most ${f.maxLength} characters.',
    invalidYear: (_) => 'That year isn’t valid.',
    invalidMovieId: (_) => 'That movie ID isn’t valid.',
    invalidUrl: (_) => 'That URL isn’t valid.',
    serverError: (f) => f.errorMessage,
    cacheError: (f) => f.errorMessage,
    unexpectedError: (f) => f.errorMessage,
  );
}
