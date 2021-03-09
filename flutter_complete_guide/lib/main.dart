import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var questions = [
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
      if (_questionIndex >= questions.length) {
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
        body: _questionIndex <= questions.length - 1
            ? Column(
                children: [
                  Question(questions[_questionIndex]["questionText"]),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((question) {
                    return Answer(_answerQuestion, question);
                  }).toList(),
                ],
              )
            : Center(child: Text("You did it!")),
      ),
    );
  }
}
