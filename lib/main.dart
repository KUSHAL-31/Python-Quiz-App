import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText':
          'What is a correct syntax to output "Hello World" in Python ?',
      'answers': [
        'echo "Hello World',
        'echo("Hello World")',
        'print("Hello World")',
        'p("Hello World")'
      ],
      'correct': 'print("Hello World")',
    },
    {
      'questionText': 'How do you insert COMMENTS in Python code ?',
      'answers': [
        '/*This is a comment*/',
        '#This is a comment',
        '//This is a comment',
        'None of these'
      ],
      'correct': '#This is a comment',
    },
    {
      'questionText': 'Which one is NOT a legal variable name ?',
      'answers': ['my-var', '_myvar', 'Myvar', 'my_var'],
      'correct': 'my-var',
    },
    {
      'questionText':
          'What is the correct syntax to output the type of a variable or object in Python ?',
      'answers': [
        'print(typeof(x))',
        'print(type(x))',
        'print(typeOf(x))',
        'print(typeof x)'
      ],
      'correct': 'print(type(x))',
    },
    {
      'questionText':
          'Which collection is ordered, changeable, and allows duplicate members ?',
      'answers': ['Set', 'Dictionary', 'Tuple', 'List'],
      'correct': 'Tuple',
    },
    {
      'questionText': 'Which collection does not allow duplicate members ?',
      'answers': ['Tuple', 'List', 'Set', 'None of these'],
      'correct': 'Set',
    },
    {
      'questionText': 'How do you start writing an if statement in Python ?',
      'answers': ['if (x > y)', 'if x > y then:', 'if x > y:', 'if( x > y ):'],
      'correct': 'if x > y:',
    },
    {
      'questionText': 'How do you start writing a for loop in Python ?',
      'answers': [
        'for x > y:',
        'for each x in y:',
        'for x in y:',
        'for x of y :'
      ],
      'correct': 'my-var',
    },
    {
      'questionText': 'Which statement is used to stop a loop ?',
      'answers': ['exit', 'break', 'stop', 'return'],
      'correct': 'break',
    },
    {
      'questionText':
          'How do you create a variable with the floating number 2.8 ?',
      'answers': [
        'x = 2.8',
        'x = float(2.8)',
        'x = toFloat(2.8)',
        'All of these'
      ],
      'correct': 'x = 2.8',
    },
  ];

  void _selectAnswer(String ans) {
    if (_questions[_questionIndex]['correct'] == ans) {
      _totalScore += 1;
    }
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Python Quiz'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questionIndex, _questions, _selectAnswer)
            : Center(
                child: Result(_totalScore, _questions.length, _resetQuiz),
              ),
      ),
    );
  }
}
