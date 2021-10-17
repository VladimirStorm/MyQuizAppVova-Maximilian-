import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answ2;
  final VoidCallback answFunc;

  Answer(this.answFunc, this.answ2);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.yellow,
        textColor: Colors.blueAccent,
        child: Text(answ2),
        onPressed: answFunc);
  }
}
