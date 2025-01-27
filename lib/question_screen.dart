import 'package:flutter/material.dart';
import 'package:quizz_app/answers_button.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQueIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQueIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQueIndex];
    return SizedBox(
      width: double.infinity, //to take as much space you can
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // it will stretch out as wide as possible to fill the entire column width
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledList().map((answer) {
              return AnswersButton(answerText: answer, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
