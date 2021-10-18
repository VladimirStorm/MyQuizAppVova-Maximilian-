import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answFile;
  final VoidCallback answFunc;
  const Answer(this.answFile, this.answFunc);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.grey,
      child:
          Text(answFile, style: TextStyle(fontSize: 25, color: Colors.yellow)),
      onPressed: answFunc,
    );
  }
}
