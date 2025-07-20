import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_search_challenge/views/core/widgets/challenge_app_bar.dart';

void main() {
  Widget buildWidget({required String title}) => MaterialApp(
    home: Scaffold(
      appBar: ChallengeAppBar(title: title),
      body: const SizedBox.shrink(),
    ),
  );

  testWidgets(
    'renders the provided title text',
    (tester) async {
      // Arrange
      const testTitle = 'My Challenge';

      // Act
      await tester.pumpWidget(buildWidget(title: testTitle));

      // Assert
      expect(find.text(testTitle), findsOneWidget);
    },
  );

  testWidgets(
    'uses an AppBar internally with centerTitle = true',
    (tester) async {
      // Arrange
      const testTitle = 'Centered Title';

      // Act
      await tester.pumpWidget(buildWidget(title: testTitle));
      final appBar = tester.widget<AppBar>(find.byType(AppBar));

      // Assert
      expect(appBar.centerTitle, isTrue);
    },
  );
}
