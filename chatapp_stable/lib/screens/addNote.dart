import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  CollectionReference ref = FirebaseFirestore.instance.collection('notes');

  @override
  Widget build(BuildContext context) {
    return new Builder(builder: (ctx) {
      return new Scaffold(
        appBar: AppBar(
          actions: [
            FlatButton(
                onPressed: () {
                  ref.add({
                    'title': title.text,
                    'content': content.text,
                  }).whenComplete(() => Navigator.pop(context));
                },
                child: Text('Save'))
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: title,
                decoration: InputDecoration(hintText: 'Title '),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextField(
                  controller: content,
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
