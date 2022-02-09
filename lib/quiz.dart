import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function selectAnswer;

  Quiz(this.questionIndex, this.questions, this.selectAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
          questionIndex,
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(answer, selectAnswer))
            .toList()
      ],
    );
  }
}
