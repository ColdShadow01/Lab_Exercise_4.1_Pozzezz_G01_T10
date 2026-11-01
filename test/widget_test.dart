// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:pozzezz_lab_4/main.dart';

void main() {
  testWidgets('Pozzezz smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our store name and buttons exist on the Home Page.
    expect(find.text('Welcome to Pozzezz!'), findsOneWidget);
    expect(find.text('View Menu'), findsOneWidget);
    expect(find.text('About Us'), findsOneWidget);
  });
}
