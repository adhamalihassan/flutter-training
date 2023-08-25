import 'package:first_app/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

enum Screen {
  question,
  start,
}

class _QuizState extends State<Quiz> {
  Screen? activeScreen;

  void switchScreen() {
    setState(() {
      activeScreen = Screen.question;
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Screen.start;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == Screen.start
              ? StartScreen(switchScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
