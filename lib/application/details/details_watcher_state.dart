part of 'details_watcher_bloc.dart';

/// State for the details watcher bloc
@freezed
sealed class DetailsWatcherState with _$DetailsWatcherState {
  /// Initial state before any action
  const factory DetailsWatcherState.initial() = DetailsWatcherInitial;

  /// State while loading movie details
  const factory DetailsWatcherState.loadInProgress() =
      DetailsWatcherLoadInProgress;

  /// State when movie details have been loaded successfully
  const factory DetailsWatcherState.loadSuccess(
    Movie movie,
  ) = DetailsWatcherLoadSuccess;

  /// State when loading movie details failed
  const factory DetailsWatcherState.loadFailure(
    Failure<dynamic> failure,
  ) = DetailsWatcherLoadFailure;
}
