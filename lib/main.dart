import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300.0,
                color: const Color.fromARGB(125, 255, 255, 255),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                label: const Text(
                  'start quiz',
                ),
                icon: const Icon(Icons.arrow_right_alt),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
