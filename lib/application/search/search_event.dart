part of 'search_bloc.dart';

/// Event for the search bloc
@freezed
sealed class SearchEvent with _$SearchEvent {
  /// Called when the search query input changes
  const factory SearchEvent.queryChanged({
    required String title,
  }) = QueryChanged;

  /// Called to perform a new search (resets page/results)
  const factory SearchEvent.searchRequested() = SearchRequested;

  /// Called to load the next page of results
  const factory SearchEvent.loadNextPage() = LoadNextPage;
}
