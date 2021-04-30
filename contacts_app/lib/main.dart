import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  Text("Placeholder");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirebaseAuthDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirebaseAuthDemo extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('contacts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: TextFormField(
                    controller: _textEditingController,
                    style: TextStyle(fontSize: 22, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  child: ElevatedButton(
                      onPressed: () async {
                        await collectionReference
                            .add({'name': _textEditingController.text}).then(
                                (value) => _textEditingController.clear());
                      },
                      child: Text(
                        'Add Data',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ],
            ),
            Expanded(
                child: StreamBuilder(
              stream: collectionReference.snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: snapshot.data.docs
                        .map((e) => Column(
                              children: [
                                ListTile(
                                  title: Text(e['name']),
                                ),
                                Divider(
                                  color: Colors.black.withOpacity(0.6),
                                  thickness: 2,
                                )
                              ],
                            ))
                        .toList(),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
