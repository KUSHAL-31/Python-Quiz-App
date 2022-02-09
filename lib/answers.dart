import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function chooseAnswer;
  final String answerText;
  Answer(this.answerText, this.chooseAnswer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        onPressed: () => chooseAnswer(answerText),
        style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
