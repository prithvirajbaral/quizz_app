import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() {
    return _QuizzState();
  }
}

class _QuizzState extends State<Quizz> {
  // var activeScreen = const StartScreen();
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var selectedAnswer = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (questions.length == selectedAnswer.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = const ResultScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 76, 7, 88),
                Color.fromARGB(255, 153, 25, 175),
                Color.fromARGB(255, 140, 65, 175)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
