import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var ques2;
  Question(this.ques2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        ques2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
