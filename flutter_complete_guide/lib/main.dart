import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';

import './quiz.dart';
import "./result.dart";

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
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "white", "score": 1}
      ]
    },
    {
      'questionText': 'Whats your favorite Animal?',
      'answers': [
        {"text": 'Rabbit', "score": 4},
        {"text": 'Snake', "score": 10},
        {"text": 'Elephant', "score": 2},
        {"text": 'Lion', "score": 3},
      ]
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': [
        {"text": 'Max', "score": 10},
        {"text": 'Nelson', "score": 12},
        {"text": 'Noone xd', "score": 0},
        {"text": 'NaZhou', "score": 10},
      ]
    }
  ];

  void _answerQuestion(answer, int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex++;
      if (_questionIndex >= _questions.length) {
        _questionIndex = 0;
      }
    });
    print("Answer chosen! $answer with id $_questionIndex");
  }

  var _questionIndex = 0;
  var _totalScore = 0;

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
            : Result(_totalScore),
      ),
    );
  }
}
