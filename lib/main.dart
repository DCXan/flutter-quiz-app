import 'dart:math';

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
            children: [
              Image.asset(
                '/Users/davidchen/Desktop/Flutter-Projects/flutter-quiz-app/quiz_app/assets/images/quiz-logo.png',
              ),
              const TextButton(onPressed: buttonPress, child: Text('Start Quiz'))
            ],
          ),
        ),
      ),
    ),
  );
}
