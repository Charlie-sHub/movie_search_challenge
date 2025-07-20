import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/views/core/routes/router.gr.dart';
import 'package:movie_search_challenge/views/search/widgets/movies_list_view.dart';

import 'movies_list_view_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<SearchBloc>(),
  MockSpec<StackRouter>(),
])
void main() {
  late MockSearchBloc mockBloc;
  late MockStackRouter mockRouter;

  final movies = [
    Movie.summary(
      id: 'tt0000001',
      title: 'Movie A',
      year: '2001',
      posterUrl: '',
    ),
    Movie.summary(
      id: 'tt0000002',
      title: 'Movie B',
      year: '2002',
      posterUrl: '',
    ),
  ];

  setUp(
    () {
      mockBloc = MockSearchBloc();
      mockRouter = MockStackRouter();
      provideDummy<SearchState>(SearchState.initial());
      when(mockBloc.state).thenReturn(SearchState.initial());
      when(mockRouter.push(any)).thenAnswer(
        (_) async => null,
      );
    },
  );

  Widget buildWidget({
    required bool hasReachedEnd,
    required bool isLoadingMore,
  }) => MaterialApp(
    home: StackRouterScope(
      controller: mockRouter,
      stateHash: 0,
      child: BlocProvider<SearchBloc>.value(
        value: mockBloc,
        child: Scaffold(
          body: MoviesListView(
            movies: movies,
            hasReachedEnd: hasReachedEnd,
            isLoadingMore: isLoadingMore,
          ),
        ),
      ),
    ),
  );

  testWidgets(
    'displays list tiles and loading indicator when not at end',
    (tester) async {
      // Act
      await tester.pumpWidget(
        buildWidget(hasReachedEnd: false, isLoadingMore: false),
      );
      await tester.pump();

      // Assert
      expect(find.byType(ListTile), findsNWidgets(2));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'does not show loading indicator when hasReachedEnd is true',
    (tester) async {
      // Act
      await tester.pumpWidget(
        buildWidget(hasReachedEnd: true, isLoadingMore: false),
      );
      await tester.pumpAndSettle();

      // Assert
      expect(find.byType(ListTile), findsNWidgets(2));
      expect(find.byType(CircularProgressIndicator), findsNothing);
    },
  );

  testWidgets(
    'tapping on a tile pushes DetailsRoute with correct id',
    (tester) async {
      // Act
      await tester.pumpWidget(
        buildWidget(hasReachedEnd: true, isLoadingMore: false),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Movie A'));
      await tester.pumpAndSettle();

      // Assert
      verify(
        mockRouter.push(
          DetailsRoute(imdbId: MovieId('tt0000001')),
        ),
      ).called(1);
    },
  );

  testWidgets(
    'scrolling near bottom adds LoadNextPage event',
    (tester) async {
      // Arrange
      await tester.pumpWidget(
        buildWidget(hasReachedEnd: false, isLoadingMore: false),
      );
      await tester.pump();
      final listFinder = find.byType(ListView);
      await tester.drag(listFinder, const Offset(0, -500));
      await tester.pump();

      // Assert
      verify(mockBloc.add(const SearchEvent.loadNextPage()));
    },
  );
}
