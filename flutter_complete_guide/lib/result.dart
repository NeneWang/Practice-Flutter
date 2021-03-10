import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText = "You did it! $resultScore";
    if (resultScore <= 8) {
      resultText += " You are innocent";
    } else {
      resultText += "You bad guy";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ));
  }
}
