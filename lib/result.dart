import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

String get resultPhrase {
String resultText;
if (resultScore <=30){
  resultText = 'You are awesome and innocent';
}
else if (resultScore <=60){
  resultText = 'Pretty likeable!';
}
else if (resultScore <=90){
  resultText = 'You are ... strange!';
}
else {
  resultText = 'You are so bad';
}
return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold)));
  }
}
