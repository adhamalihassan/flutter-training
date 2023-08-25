import 'package:first_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:first_app/data/questions.dart';
import 'models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int index = 0;

  void answerQuestion() {
    setState(() {
      index++;
      index = index % questions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[index];
    final answers = List.of(currentQuestion.answers);
    answers.shuffle();
    return Center(
        child: Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          ...answers.map(
            (answer) => AnswerButton(
              key: ObjectKey(answer),
              text: answer,
              onTap: answerQuestion,
            ),
          )
        ],
      ),
    ));
  }
}
