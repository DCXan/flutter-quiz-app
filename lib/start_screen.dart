import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void buttonPress() {
    debugPrint("button pressed");
  }

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
          ),
          const SizedBox(
            height: 24,
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
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 243, 224, 253),
              backgroundColor: const Color.fromARGB(255, 85, 33, 168),
            ),
            onPressed: buttonPress,
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
