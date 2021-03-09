import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';

import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'Whats your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'Whats your favorite Animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': ['Max', 'Nelson', 'Noone xd', 'NaZhou']
    }
  ];

  void _answerQuestion(answer) {
    setState(() {
      _questionIndex++;
      if (_questionIndex >= _questions.length) {
        _questionIndex = 0;
      }
    });
    print("Answer chosen! $answer with id ${_questionIndex}");
  }

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Quiz with Extracted Dart File")),
        body: _questionIndex <= _questions.length - 1
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Center(child: Text("You did it!")),
      ),
    );
  }
}
