import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/views/core/routes/router.gr.dart';

/// List view for displaying movies
class MoviesListView extends StatelessWidget {
  /// Constructor for [MoviesListView]
  const MoviesListView({
    required this.movies,
    required this.isLoadingMore,
    required this.hasReachedEnd,
    this.footerError,
    super.key,
  });

  /// Movies to display
  final List<Movie> movies;

  /// Whether to show a loading indicator while loading more movies
  final bool isLoadingMore;

  /// Whether there are no more movies to load
  final bool hasReachedEnd;

  /// Error message to display if any
  final String? footerError;

  @override
  Widget build(BuildContext context) =>
      NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (scrollInfo.metrics.maxScrollExtent <= 0) {
            return false;
          } else {
            if (!hasReachedEnd &&
                !isLoadingMore &&
                scrollInfo.metrics.pixels >=
                    scrollInfo.metrics.maxScrollExtent - 200) {
              context.read<SearchBloc>().add(
                const SearchEvent.loadNextPage(),
              );
            }
            return false;
          }
        },
        child: ListView.separated(
          itemCount: hasReachedEnd ? movies.length : movies.length + 1,
          separatorBuilder: (_, _) => const Divider(),
          itemBuilder: (context, index) {
            if (index < movies.length) {
              final movie = movies[index];
              final posterUrl = movie.posterUrl.value.getOrElse(() => '');
              return ListTile(
                leading: posterUrl.isNotEmpty
                    ? Image.network(
                        posterUrl,
                        width: 50,
                        errorBuilder: (_, _, _) => const SizedBox(),
                      )
                    : null,
                title: Text(movie.title.value.getOrElse(() => '')),
                subtitle: Text(movie.year.value.getOrElse(() => '')),
                onTap: () => context.router.push(
                  DetailsRoute(imdbId: movie.id),
                ),
              );
            }
            if (isLoadingMore) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              );
            } else if (footerError != null) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Text(
                    footerError!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      );
}
