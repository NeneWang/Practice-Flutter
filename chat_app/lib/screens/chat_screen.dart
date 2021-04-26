import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
              padding: EdgeInsets.all(8),
              child: Text("This works!"),
            ));
  }
}
