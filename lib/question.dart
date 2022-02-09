import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int questionIdx;

  Question(this.questionText, this.questionIdx);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 30),
      child: Text(
        "${questionIdx + 1}) $questionText",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
