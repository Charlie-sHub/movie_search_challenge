import 'package:flutter/material.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';

/// Displays full details of a [Movie] entity
class MovieDetails extends StatelessWidget {
  /// Constructor for [MovieDetails]
  const MovieDetails({required this.movie, super.key});

  /// Movie to display
  final Movie movie;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        movie.posterUrl.value.fold(
          (failure) => const SizedBox(),
          (url) => Center(
            child: Image.network(
              movie.posterUrl.getOrCrash(),
              height: 300,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          movie.title.getOrCrash(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text('Year: ${movie.year.getOrCrash()}'),
        if (movie.type != null) Text('Type: ${movie.type}'),
        const Divider(height: 24),
        if (movie.plot != null) ...[
          Text('Plot', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 4),
          Text(movie.plot!),
          const Divider(height: 24),
        ],
        if (movie.director != null) Text('Director: ${movie.director}'),
        if (movie.actors != null) Text('Actors: ${movie.actors}'),
        if (movie.genre != null) Text('Genre: ${movie.genre}'),
        if (movie.ratings != null && movie.ratings!.isNotEmpty) ...[
          const Divider(height: 24),
          Text('Ratings', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 4),
          ...movie.ratings!.entries.map(
            (entry) => Text(
              '${entry.key}: ${entry.value}',
            ),
          ),
        ],
      ],
    ),
  );
}
