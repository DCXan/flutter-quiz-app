import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void buttonPress() {
    debugPrint("button pressed");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          // '/Users/davidchen/Desktop/Flutter-Projects/flutter-quiz-app/quiz_app/assets/images/quiz-logo.png',
          'assets/images/quiz-logo.png',
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
          ),
        ),
        ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 64, 4, 124),
          ),
          onPressed: buttonPress,
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
