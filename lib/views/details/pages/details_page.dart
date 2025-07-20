import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search_challenge/application/details/details_watcher_bloc.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/injection.dart';
import 'package:movie_search_challenge/views/core/widgets/challenge_app_bar.dart';
import 'package:movie_search_challenge/views/details/widgets/details_state_view.dart';

/// Page for movie details
@RoutePage()
class DetailsPage extends StatelessWidget {
  /// Constructor for [DetailsPage]
  const DetailsPage({
    required this.imdbId,
    super.key,
  });

  /// IMDB ID of the movie
  final MovieId imdbId;

  @override
  Widget build(BuildContext context) => BlocProvider<DetailsWatcherBloc>(
    create: (context) => getIt<DetailsWatcherBloc>()
      ..add(
        DetailsWatcherEvent.initialized(id: imdbId),
      ),
    child: const Scaffold(
      appBar: ChallengeAppBar(title: 'Movie Details'),
      body: DetailsStateView(),
    ),
  );
}
