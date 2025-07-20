part of 'search_bloc.dart';

/// State for the search bloc
@freezed
sealed class SearchState with _$SearchState {
  /// Represents the current search state
  const factory SearchState({
    required MovieTitle title,
    required int page,
    required bool isLoading,
    required bool hasReachedEnd,
    required List<Movie> results,
    required Option<Failure<dynamic>> failureOption,
  }) = _SearchState;

  /// Initial state prior to any search
  factory SearchState.initial() => SearchState(
    title: MovieTitle(''),
    page: 1,
    isLoading: false,
    hasReachedEnd: false,
    results: const <Movie>[],
    failureOption: none(),
  );
}
