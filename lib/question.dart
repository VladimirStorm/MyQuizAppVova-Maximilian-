import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var quesFile;
  Question(this.quesFile);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Text(quesFile,
            style: TextStyle(color: Colors.pink, fontSize: 25),
            textAlign: TextAlign.center));
  }
}
