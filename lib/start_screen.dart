import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),

          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
              fontSize: 28,
              color: Color.fromARGB(255, 5, 5, 5),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          // OutlinedButton(
          //     onPressed: openQuizz,
          //     style: OutlinedButton.styleFrom(
          //         foregroundColor: Colors.white,
          //         backgroundColor: const Color.fromARGB(248, 40, 0, 72)),
          //     child: const Text('Start Quizz'))

          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(248, 40, 0, 72),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
