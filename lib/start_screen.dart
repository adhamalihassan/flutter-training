import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.montserrat(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            label: Text(
              'start quiz',
              style: GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}