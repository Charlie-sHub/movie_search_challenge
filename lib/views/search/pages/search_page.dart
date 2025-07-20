import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/injection.dart';
import 'package:movie_search_challenge/views/core/widgets/challenge_app_bar.dart';
import 'package:movie_search_challenge/views/search/widgets/search_form.dart';
import 'package:movie_search_challenge/views/search/widgets/search_results_states_view.dart';

/// Page for searching movies
@RoutePage()
class SearchPage extends StatelessWidget {
  /// Constructor for [SearchPage]
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<SearchBloc>(
    create: (_) => getIt<SearchBloc>(),
    child: const Scaffold(
      appBar: ChallengeAppBar(title: 'Search Movies'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: SearchForm(),
          ),
          Expanded(child: SearchResultsStateView()),
        ],
      ),
    ),
  );
}
