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
          Image.asset(
            // '/Users/davidchen/Desktop/Flutter-Projects/flutter-quiz-app/quiz_app/assets/images/quiz-logo.png',
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 48,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 243, 224, 253),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 243, 224, 253),
              backgroundColor: const Color.fromARGB(255, 85, 33, 168),
            ),
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}
