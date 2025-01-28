import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(context) {
    final questionNum = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 12, 254, 254) // Correct answer color
            : const Color.fromARGB(255, 255, 2, 217), // Incorrect answer color
        shape: BoxShape.circle, // Making the container circular
      ),
      child: Text(
        questionNum.toString(),
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white, // Text color inside the circle
        ),
      ),
    );
  }
}
