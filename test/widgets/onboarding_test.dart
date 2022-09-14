import 'package:chekikeja/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  Widget createWidgetUnderTest() {
    return const MaterialApp(
      title: "Cheki Keja",
      home: OnboardingScreen(),
    );
  }

  testWidgets("Title Shown", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(createWidgetUnderTest());
    expect(find.textContaining("Your Dream House"), findsOneWidget);
  });
  testWidgets("Subtitle Shown", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(createWidgetUnderTest());
    expect(find.textContaining("searching and finding"), findsOneWidget);
  });
  testWidgets("Buttons Rendered", (widgetTester) async {
    await widgetTester.pumpWidget(createWidgetUnderTest());
    expect(find.byType(TextButton), findsNWidgets(2));
  });
}
