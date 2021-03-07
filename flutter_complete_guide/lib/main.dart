import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(answer) {
    print("Answer chosen! $answer");
  }

  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Quiz App")),
        body: Column(
          children: [
            Text("The question!"),
            RaisedButton(
                child: Text("Answer 1"), onPressed: () => answerQuestion("Q1")),
            RaisedButton(
                child: Text("Answer 2"), onPressed: () => answerQuestion("Q2")),
            RaisedButton(
                child: Text("Answer 3"), onPressed: () => answerQuestion("Q3")),
          ],
        ),
      ),
    );
  }
}
