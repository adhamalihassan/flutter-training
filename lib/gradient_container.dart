import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 212, 0, 0),
          Color.fromARGB(255, 255, 131, 131),
          Color.fromARGB(255, 255, 221, 221),
        ]),
      ),
      child: const Center(
        child: StyledText('hello world!'),
      ),
    );
  }
}
