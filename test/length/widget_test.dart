// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_unit_converter/main.dart';

void main() {
  testWidgets('App shows appbar with title and dropdown button', (
    WidgetTester tester,
  ) async {
    // build the app and trigger a frame
    await tester.pumpWidget(const MyApp());

    // verify that app shows title and dropdown button
    expect(find.text('Unit Converter'), findsOne);
    expect(find.byType(DropdownButton<int>), findsOne);
  });

  testWidgets('Dropdown button works well', (WidgetTester tester) async {
    // build the app and trigger a frame
    await tester.pumpWidget(const MyApp());

    // tap dropdown and trigger a frame
    await tester.tap(find.byType(DropdownButton<int>));
    await tester.pump();

    // verify that dropdown shows the items
    expect(find.text('Temperatura'), findsOne);

    // tap an option and trigger a frame
    await tester.tap(find.byKey(Key('ddi_1')), warnIfMissed: false);
    await tester.pumpAndSettle();

    // verify that dropdown button have selected the correct option
    expect(find.text('Peso'), findsOne);
  });
}
