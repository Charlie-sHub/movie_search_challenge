import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/details/details_watcher_bloc.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/views/details/widgets/details_state_view.dart';
import 'package:movie_search_challenge/views/details/widgets/movie_details_widget.dart';

import 'details_state_view_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DetailsWatcherBloc>()])
void main() {
  late MockDetailsWatcherBloc mockBloc;

  setUp(
    () {
      mockBloc = MockDetailsWatcherBloc();
      provideDummy<DetailsWatcherState>(
        const DetailsWatcherState.initial(),
      );
    },
  );

  Widget buildWidget() => MaterialApp(
    home: BlocProvider<DetailsWatcherBloc>.value(
      value: mockBloc,
      child: const Scaffold(
        body: DetailsStateView(),
      ),
    ),
  );

  testWidgets(
    'shows "Loading..." on initial state',
    (tester) async {
      // Arrange
      when(mockBloc.state).thenReturn(const DetailsWatcherState.initial());

      // Act
      await tester.pumpWidget(buildWidget());

      // Assert
      expect(find.text('Loading...'), findsOneWidget);
    },
  );

  testWidgets(
    'shows CircularProgressIndicator on loadInProgress',
    (
      tester,
    ) async {
      // Arrange
      when(
        mockBloc.state,
      ).thenReturn(const DetailsWatcherState.loadInProgress());

      // Act
      await tester.pumpWidget(buildWidget());

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'renders MovieDetails on loadSuccess',
    (tester) async {
      // Arrange
      final movie = Movie.summary(
        id: 'tt1234567',
        title: 'My Movie',
        year: '2021',
        posterUrl: '',
      );
      when(mockBloc.state).thenReturn(DetailsWatcherState.loadSuccess(movie));

      // Act
      await tester.pumpWidget(buildWidget());

      // Assert
      expect(find.byType(MovieDetails), findsOneWidget);
    },
  );

  testWidgets(
    'displays error message on loadFailure',
    (tester) async {
      // Arrange
      const failure = Failure.serverError(errorMessage: 'test');
      when(mockBloc.state).thenReturn(
        const DetailsWatcherState.loadFailure(failure),
      );

      // Act
      await tester.pumpWidget(buildWidget());

      // Assert
      expect(find.text('Error: ${failure.errorString}'), findsOneWidget);
    },
  );
}
