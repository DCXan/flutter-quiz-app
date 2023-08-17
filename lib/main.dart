import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 110, 8, 128),
                Color.fromARGB(255, 79, 7, 92),
              ]),
            ),
            child: const StartScreen()),
      ),
    ),
  );
}
