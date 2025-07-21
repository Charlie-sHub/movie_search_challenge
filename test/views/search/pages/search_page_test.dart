import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/injection.dart';
import 'package:movie_search_challenge/views/core/widgets/challenge_app_bar.dart';
import 'package:movie_search_challenge/views/search/pages/search_page.dart';
import 'package:movie_search_challenge/views/search/widgets/search_form.dart';
import 'package:movie_search_challenge/views/search/widgets/search_results_states_view.dart';

import 'search_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SearchBloc>()])
void main() {
  late MockSearchBloc mockBloc;

  setUp(
    () {
      mockBloc = MockSearchBloc();
      provideDummy<SearchState>(SearchState.initial());
      when(mockBloc.state).thenReturn(SearchState.initial());
      getIt.registerFactory<SearchBloc>(() => mockBloc);
    },
  );

  tearDown(
    () async {
      await mockBloc.close();
      await getIt.reset();
    },
  );

  testWidgets(
    'SearchPage shows AppBar, SearchForm, and ResultsView',
    (tester) async {
      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: SearchPage(),
        ),
      );

      // Assert
      expect(find.byType(ChallengeAppBar), findsOneWidget);
      expect(find.text('Search Movies'), findsOneWidget);
      expect(find.byType(SearchForm), findsOneWidget);
      expect(find.byType(SearchResultsStateView), findsOneWidget);
    },
  );
}
