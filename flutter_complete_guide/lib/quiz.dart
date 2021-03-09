import "question.dart";
import "answer.dart";
import "package:flutter/material.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<String>)
            .map((question) {
          return Answer(answerQuestion, question);
        }).toList(),
      ],
    );
  }
}
