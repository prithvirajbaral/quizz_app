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
    return SizedBox(
        width: double.infinity, //to take as much space you can
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("The questions..."),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 4'),
            ),
          ],
        ));
  }
}
