part of 'details_watcher_bloc.dart';

/// Event for the details watcher bloc
@freezed
sealed class DetailsWatcherEvent with _$DetailsWatcherEvent {
  /// Trigger fetching of full movie details for [id]
  const factory DetailsWatcherEvent.initialized({
    required MovieId id,
  }) = DetailsWatcherInitialized;
}
