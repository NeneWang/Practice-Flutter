import 'package:flutter/material.dart';

class Greeter extends StatelessWidget {
  const Greeter({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello, $name'),
    );
  }
}
