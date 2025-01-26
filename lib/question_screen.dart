import 'package:flutter/material.dart';

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
    return const Center(
        child: Text(
      'Question screen',
      style: TextStyle(fontSize: 28, color: Colors.white),
    ));
  }
}
