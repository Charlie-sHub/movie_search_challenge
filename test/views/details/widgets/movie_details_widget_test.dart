import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_year.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/poster_url.dart';
import 'package:movie_search_challenge/views/details/widgets/movie_details_widget.dart';

void main() {
  testWidgets(
    'renders all non-null fields of MovieDetails',
    (tester) async {
      // Arrange
      final movie = Movie(
        id: MovieId('tt1234567'),
        title: MovieTitle('Test Movie'),
        year: MovieYear('2021'),
        posterUrl: PosterUrl(''),
        type: 'movie',
        plot: 'An epic tale.',
        director: 'Jane Doe',
        actors: 'Actor A, Actor B',
        genre: 'Drama',
        ratings: {
          'IMDB': '8/10',
          'Rotten Tomatoes': '90%',
        },
      );

      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: MovieDetails(movie: movie)),
        ),
      );

      // Assert
      expect(find.text(movie.title.getOrCrash()), findsOneWidget);
      expect(find.text('Year: ${movie.year.getOrCrash()}'), findsOneWidget);
      expect(find.text('Type: ${movie.type!}'), findsOneWidget);
      expect(find.text(movie.plot!), findsOneWidget);
      expect(find.text('Director: ${movie.director!}'), findsOneWidget);
      expect(find.text('Actors: ${movie.actors!}'), findsOneWidget);
      expect(find.text('Genre: ${movie.genre!}'), findsOneWidget);
    },
  );
}
