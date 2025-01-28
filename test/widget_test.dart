// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quizz_app/quizz.dart'; // Import your main widget.

void main() {
  testWidgets('Quizz app initial screen test', (WidgetTester tester) async {
    // Build the Quizz app.
    await tester.pumpWidget(const Quizz());

    // Verify that the StartScreen is displayed initially.
    // (Update the following according to the actual widget or text in your StartScreen)
    expect(find.text('Start'), findsOneWidget); // Assuming "Start" is a button or text in StartScreen.
  });

  testWidgets('Quizz app switches to QuestionScreen', (WidgetTester tester) async {
    // Build the Quizz app.
    await tester.pumpWidget(const Quizz());

    // Tap the "Start" button (or equivalent in your StartScreen).
    await tester.tap(find.text('Start')); // Replace 'Start' with the actual button text or widget key.
    await tester.pump();

    // Verify that the QuestionScreen is displayed.
    expect(find.text('Question'), findsOneWidget); // Replace 'Question' with the actual text/widget in QuestionScreen.
  });
}
