import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/views/search/widgets/movies_list_view.dart';

/// Displays UI based on [SearchState]
class SearchResultsStateView extends StatelessWidget {
  /// Constructor for [SearchResultsStateView]
  const SearchResultsStateView({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<SearchBloc, SearchState>(
    buildWhen: _buildWhen,
    builder: (context, state) {
      final isInitial =
          state.results.isEmpty &&
          !state.isLoading &&
          state.failureOption.isNone();
      if (isInitial) {
        return const Center(
          child: Text('Enter a movie title to begin searching.'),
        );
      } else if (state.failureOption.isSome() && state.page == 1) {
        final failure = state.failureOption.fold(
          () => throw Error(),
          id,
        );
        return Center(
          child: Text(
            failure.errorString,
            style: const TextStyle(color: Colors.red),
          ),
        );
      } else {
        return MoviesListView(
          movies: state.results,
          isLoadingMore: state.isLoading,
          hasReachedEnd: state.hasReachedEnd,
          footerError: state.failureOption.isSome() && state.page > 1
              ? state.failureOption.fold(
                  () => '',
                  (failure) => failure.errorString,
                )
              : null,
        );
      }
    },
  );

  bool _buildWhen(SearchState previous, SearchState current) =>
      previous.results != current.results ||
      previous.isLoading != current.isLoading ||
      previous.failureOption != current.failureOption;
}
