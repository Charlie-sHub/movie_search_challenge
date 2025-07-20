import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/views/search/widgets/search_form.dart';

import 'search_form_test.mocks.dart';

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

  Widget buildWidget() => MaterialApp(
    home: BlocProvider<SearchBloc>.value(
      value: mockBloc,
      child: const Scaffold(body: SearchForm()),
    ),
  );

  testWidgets(
    'renders text field and search button',
    (tester) async {
      // Act
      await tester.pumpWidget(buildWidget());

      // Assert
      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.widgetWithText(ElevatedButton, 'Search'), findsOneWidget);
    },
  );

  testWidgets(
    'typing calls QueryChanged on bloc',
    (tester) async {
      // Act
      await tester.pumpWidget(buildWidget());
      await tester.enterText(find.byType(TextFormField), 'Inception');

      // Assert
      verify(
        mockBloc.add(
          const SearchEvent.queryChanged(title: 'Inception'),
        ),
      ).called(1);
    },
  );

  testWidgets(
    'tapping button calls SearchRequested on bloc',
    (tester) async {
      // Act
      await tester.pumpWidget(buildWidget());
      await tester.tap(find.widgetWithText(ElevatedButton, 'Search'));

      // Assert
      verify(mockBloc.add(const SearchEvent.searchRequested())).called(1);
    },
  );
}
