import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/views/search/widgets/movies_list_view.dart';
import 'package:movie_search_challenge/views/search/widgets/search_results_states_view.dart';

import 'search_results_state_view_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SearchBloc>()])
void main() {
  late MockSearchBloc mockBloc;

  setUp(
    () {
      mockBloc = MockSearchBloc();
      provideDummy<SearchState>(SearchState.initial());
      when(mockBloc.state).thenReturn(SearchState.initial());
    },
  );

  Widget buildWidget(SearchState state) {
    when(mockBloc.state).thenReturn(state);
    return MaterialApp(
      home: BlocProvider<SearchBloc>.value(
        value: mockBloc,
        child: const Scaffold(body: SearchResultsStateView()),
      ),
    );
  }

  testWidgets(
    'initial state shows prompt text',
    (tester) async {
      // Arrange
      final state = SearchState.initial();

      // Act
      await tester.pumpWidget(buildWidget(state));

      // Assert
      expect(
        find.text('Enter a movie title to begin searching.'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'loading state shows CircularProgressIndicator',
    (tester) async {
      // Arrange
      final state = SearchState.initial().copyWith(isLoading: true);

      // Act
      await tester.pumpWidget(buildWidget(state));

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'failure state shows error message',
    (tester) async {
      // Arrange
      const errorMessage = 'Network error';
      final failureState = SearchState.initial().copyWith(
        failureOption: some(
          const Failure.serverError(errorMessage: errorMessage),
        ),
      );

      // Act
      await tester.pumpWidget(buildWidget(failureState));

      // Assert
      expect(find.text(errorMessage), findsOneWidget);
    },
  );

  testWidgets(
    'success state shows MoviesListView',
    (tester) async {
      // Arrange
      final movie = Movie.summary(
        id: 'tt1234567',
        title: 'Test',
        year: '2020',
        posterUrl: '',
      );
      final successState = SearchState.initial().copyWith(
        results: [movie],
        isLoading: false,
        failureOption: none(),
        hasReachedEnd: true,
      );

      // Act
      await tester.pumpWidget(buildWidget(successState));

      // Assert
      expect(find.byType(MoviesListView), findsOneWidget);
      expect(find.text(movie.title.getOrCrash()), findsOneWidget);
      expect(find.text(movie.year.getOrCrash()), findsOneWidget);
    },
  );
}
