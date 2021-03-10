import "package:flutter/material.dart";

class MyText extends StatelessWidget {
  final String contentText;
  MyText(this.contentText);

  @override
  Widget build(BuildContext context) {
    return Text(contentText);
  }
}
