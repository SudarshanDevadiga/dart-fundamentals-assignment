import 'package:flutter_test/flutter_test.dart';

import 'package:dart_fundamental/main.dart';

void main() {
  testWidgets(
    'Dart Fundamentals app loads successfully',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const DartFundamentalsApp(),
      );

      expect(
        find.text('Dart Fundamentals'),
        findsOneWidget,
      );

      expect(
        find.text('Part A + Part B'),
        findsOneWidget,
      );

      expect(
        find.text('9 modules completed'),
        findsOneWidget,
      );
    },
  );
}