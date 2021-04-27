import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Builder(builder: (ctx) {
      return new Scaffold(
        appBar: AppBar(
          actions: [FlatButton(onPressed: () {}, child: Text('Save'))],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                decoration: InputDecoration(hintText: 'Title '),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(hintText: 'Content '),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
