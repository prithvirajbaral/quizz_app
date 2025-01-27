import 'package:flutter/material.dart';
import 'package:quizz_app/answers_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
        width: double.infinity, //to take as much space you can
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "The questions...",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            AnswersButton(
              answerText: "answer1",
              onTap: () {},
            ),
            AnswersButton(
              answerText: "answer2",
              onTap: () {},
            ),
            AnswersButton(
              answerText: "answer3",
              onTap: () {},
            ),
            AnswersButton(
              answerText: "answer4",
              onTap: () {},
            ),
          ],
        ));
  }
}
