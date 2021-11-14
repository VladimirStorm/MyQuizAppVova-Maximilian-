import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var quesQuestion;
  Question(this.quesQuestion);
  @override
  Widget build(BuildContext context) {
    return Text(quesQuestion,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 23
      ));
  }
}
