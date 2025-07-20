import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/search/search_interface.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

/// Bloc that handles movie search and pagination
@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  /// Constructor for the [SearchBloc]
  SearchBloc(this._searchRepository) : super(SearchState.initial()) {
    on<QueryChanged>(_onQueryChanged);
    on<SearchRequested>(_onSearchRequested);
    on<LoadNextPage>(_onLoadNextPage);
  }

  final SearchRepositoryInterface _searchRepository;
  static const int _resultsPerPage = 10;

  Future<void> _onQueryChanged(
    QueryChanged event,
    Emitter<SearchState> emit,
  ) async => emit(
    state.copyWith(
      title: MovieTitle(event.title),
    ),
  );

  Future<void> _onSearchRequested(
    SearchRequested event,
    Emitter<SearchState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        failureOption: none(),
      ),
    );

    if (state.title.isValid()) {
      final result = await _searchRepository.search(
        title: state.title,
        page: 1,
      );

      result.fold(
        (failure) {
          emit(
            state.copyWith(
              isLoading: false,
              results: const [],
              hasReachedEnd: false,
              failureOption: some(failure),
            ),
          );
        },
        (movies) {
          emit(
            state.copyWith(
              isLoading: false,
              results: movies,
              hasReachedEnd: movies.length < _resultsPerPage,
              failureOption: none(),
            ),
          );
        },
      );
    } else {
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    }
  }

  Future<void> _onLoadNextPage(_, Emitter<SearchState> emit) async {
    if (!state.isLoading && !state.hasReachedEnd) {
      final nextPage = state.page + 1;
      emit(
        state.copyWith(isLoading: true),
      );

      final result = await _searchRepository.search(
        title: state.title,
        page: nextPage,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            failureOption: some(failure),
          ),
        ),
        (movies) => emit(
          state.copyWith(
            isLoading: false,
            page: nextPage,
            results: List.of(state.results)..addAll(movies),
            hasReachedEnd: movies.length < _resultsPerPage,
          ),
        ),
      );
    }
  }
}
