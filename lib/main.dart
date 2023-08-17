
import 'package:flutter/material.dart';

void buttonPress() {
  debugPrint("button pressed");
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 64, 4, 124),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '/Users/davidchen/Desktop/Flutter-Projects/flutter-quiz-app/quiz_app/assets/images/quiz-logo.png',
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
          ),
        ),
      ),
    ),
  );
}
