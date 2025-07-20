import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/details/details_interface.dart';

part 'details_watcher_event.dart';

part 'details_watcher_state.dart';

part 'details_watcher_bloc.freezed.dart';

/// Bloc that fetches full movie details
@injectable
class DetailsWatcherBloc
    extends Bloc<DetailsWatcherEvent, DetailsWatcherState> {
  /// Constructor for [DetailsWatcherBloc]
  DetailsWatcherBloc(
    this._detailsRepository,
  ) : super(const DetailsWatcherState.initial()) {
    on<DetailsWatcherInitialized>(_onInitialized);
  }

  final DetailsRepositoryInterface _detailsRepository;

  Future<void> _onInitialized(
    DetailsWatcherInitialized event,
    Emitter<DetailsWatcherState> emit,
  ) async {
    emit(const DetailsWatcherState.loadInProgress());

    final result = await _detailsRepository.getMovieDetails(id: event.id);

    result.fold(
      (failure) => emit(
        DetailsWatcherState.loadFailure(failure),
      ),
      (movie) => emit(
        DetailsWatcherState.loadSuccess(movie),
      ),
    );
  }
}
