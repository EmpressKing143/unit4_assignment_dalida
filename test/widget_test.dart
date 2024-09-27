import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit4_assignment_dalida/main.dart';

void main() {
  testWidgets('Profile Page displays user information', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Reynan L. Dalida'), findsOneWidget);
    expect(find.text('Bilao, Sapi-an, Capiz, Philippines'), findsOneWidget);
    expect(find.text('reynan.dalida@wvsu.edu.ph'), findsOneWidget);
    expect(find.text('09911057597'), findsOneWidget);
    expect(find.text('Counter: 0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('Counter: 1'), findsOneWidget);
  });
}
