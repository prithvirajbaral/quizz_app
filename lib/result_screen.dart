import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

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
  // int getCorrectAnswerCount() {
  //   int correctAnswers = 0;

  //   // Get summary data and count the correct answers
  //   for (var i = 0; i < chosenAnswer.length; i++) {
  //     if (chosenAnswer[i] == questions[i].answers[0]) {
  //       correctAnswers++;
  //     }
  //   }
  //   return correctAnswers;
  // }

  @override
  Widget build(context) {
    // int correctAns = getCorrectAnswerCount();
    final summaryData = getSummaryData();
    final totalCorrectAnswer = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered $totalCorrectAnswer out of ${questions.length} questions correctly!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 28,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: restart,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(248, 40, 0, 72),
              ),
              label: const Text("Restart Quiz"),
              icon: const Icon(Icons.restart_alt),
            )
          ],
        ),
      ),
    );
  }
}
