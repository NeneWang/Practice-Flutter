import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
