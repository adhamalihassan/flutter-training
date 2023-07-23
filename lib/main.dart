import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 212, 0, 0),
              Color.fromARGB(255, 255, 131, 131),
              Color.fromARGB(255, 255, 221, 221),
            ]),
          ),
          child: const Center(
            child: Text('hello world'),
          ),
        ),
      ),
    ),
  );
}
