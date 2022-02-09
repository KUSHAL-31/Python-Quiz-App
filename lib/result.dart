import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final int questionLength;
  final Function resetQuiz;

  Result(this.score, this.questionLength, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Quiz completed !!',
          style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Your total score :',
            style: TextStyle(fontSize: 25, color: Colors.green[900]),
          ),
        ),
        Text(
          '$score/$questionLength',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red[900]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[900],
              ),
              onPressed: () => resetQuiz(),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    );
  }
}
