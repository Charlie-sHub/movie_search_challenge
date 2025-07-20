import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_search_challenge/application/details/details_watcher_bloc.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/injection.dart';
import 'package:movie_search_challenge/views/core/widgets/challenge_app_bar.dart';
import 'package:movie_search_challenge/views/details/pages/details_page.dart';
import 'package:movie_search_challenge/views/details/widgets/details_state_view.dart';

import 'details_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DetailsWatcherBloc>()])
void main() {
  late MockDetailsWatcherBloc mockBloc;
  const testIdString = 'tt1234567';
  final testId = MovieId(testIdString);

  setUp(
    () {
      mockBloc = MockDetailsWatcherBloc();
      provideDummy<DetailsWatcherState>(
        const DetailsWatcherState.initial(),
      );
      when(mockBloc.state).thenReturn(
        const DetailsWatcherState.initial(),
      );
      getIt.registerFactory<DetailsWatcherBloc>(() => mockBloc);
    },
  );

  tearDown(
    () async {
      await mockBloc.close();
      await getIt.reset();
    },
  );

  testWidgets(
    'renders ChallengeAppBar and DetailsStateView, and adds initialized event',
    (tester) async {
      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: DetailsPage(imdbId: testId),
        ),
      );

      // Assert
      expect(find.byType(ChallengeAppBar), findsOneWidget);
      expect(find.byType(DetailsStateView), findsOneWidget);

      verify(
        mockBloc.add(
          DetailsWatcherEvent.initialized(id: testId),
        ),
      ).called(1);
    },
  );
}
