import 'package:flutter/material.dart';

void main() => runApp(MyAppVova());

class MyAppVova extends StatelessWidget {
  const MyAppVova({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Appbar'),       ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('My Questions'),
            // ignore: deprecated_member_use
            const RaisedButton(child: Text('answer1'), onPressed: null),
            const RaisedButton(child: Text('answer2'), onPressed: null),
            const RaisedButton(child: Text('answer3'), onPressed: null),
          ],    ),   ),  );  }}
