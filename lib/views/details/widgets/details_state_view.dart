import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search_challenge/application/details/details_watcher_bloc.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/views/details/widgets/movie_details_widget.dart';

/// Builds UI based on [DetailsWatcherState]
class DetailsStateView extends StatelessWidget {
  /// Constructor for [DetailsStateView]
  const DetailsStateView({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<DetailsWatcherBloc, DetailsWatcherState>(
        builder: (context, state) => state.when(
          initial: () => const Center(child: Text('Loading...')),
          loadInProgress: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (movie) => MovieDetails(movie: movie),
          loadFailure: (failure) => Center(
            child: Text('Error: ${failure.errorString}'),
          ),
        ),
      );
}
