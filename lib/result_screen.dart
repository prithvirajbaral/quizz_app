import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.restart});

  final List<String> chosenAnswer;
  final void Function() restart;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }
    return summary;
  }

  // Function to calculate the number of correct answers
  int getCorrectAnswerCount() {
    int correctAnswers = 0;

    // Get summary data and count the correct answers
    for (var i = 0; i < chosenAnswer.length; i++) {
      if (chosenAnswer[i] == questions[i].answers[0]) {
        correctAnswers++;
      }
    }
    return correctAnswers;
  }

  @override
  Widget build(context) {
    int correctAns = getCorrectAnswerCount();
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered $correctAns out of ${chosenAnswer.length} questions correctly!"),
            const SizedBox(
              height: 30,
            ),
            const Text("List of answers and questions..."),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: restart, child: const Text("Restart Quiz!"))
          ],
        ),
      ),
    );
  }
}
