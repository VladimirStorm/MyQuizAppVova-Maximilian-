import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String ansAnswer;
  final VoidCallback ansFunc;
  Answer(this.ansAnswer, this.ansFunc);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(ansAnswer,
            style: TextStyle(fontSize: 23, color: Colors.green)),
        onPressed: ansFunc);
  }
}
