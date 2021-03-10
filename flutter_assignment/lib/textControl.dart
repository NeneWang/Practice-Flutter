import "package:flutter/material.dart";

class TextControl extends StatelessWidget {
  final Function handler;

  TextControl(this.handler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: handler,
          child: Text("Change Color")),
    );
  }
}
