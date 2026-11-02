import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pozzezz_lab_4/contact_page.dart';

void main() {
  testWidgets('ContactPage displays title, store details, and back button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: ContactPage()));

    // Verify main headers exist
    expect(find.text('Contact Us'), findsOneWidget);
    expect(find.text('Get in Touch'), findsOneWidget);

    // Verify contact information details
    expect(
      find.text(
        'Jalan Datuk Mohd Musa, 94300 Kota Samarahan, Sarawak, Malaysia',
      ),
      findsOneWidget,
    );
    expect(find.text('+60 82 123 456'), findsOneWidget);
    expect(find.text('info@pozzezz.com'), findsOneWidget);

    // Verify back button
    expect(find.byType(OutlinedButton), findsOneWidget);
  });
}
