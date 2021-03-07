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
  void _answerQuestion(answer) {
    setState(() {
      _questionIndex++;
      if (_questionIndex > 1) {
        _questionIndex = 0;
      }
    });
    print("Answer chosen! $answer");
  }

  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
  ];

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Quiz with Extracted Dart File")),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
