import 'package:flutter/material.dart';
import 'package:flutter1_complete_guide/quiz.dart';
import 'answer.dart';
import 'question.dart';

class Result extends StatelessWidget {
  int scoreRes;
  final VoidCallback funcRes;
  Result(this.scoreRes, this.funcRes);

  String get textResGet {
    String textResGetR;
    if (scoreRes < 30) {
      textResGetR = 'you are less than 30';
    } else if (scoreRes == 30) {
      textResGetR = 'you are good =30';
    } else if (scoreRes < 50) {
      textResGetR = 'you are best, and less than 50';
    } else {
      textResGetR = 'you are best, and bigger than 50';
    }
    return textResGetR;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            child:  Text(
              textResGet,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center
            )),
        TextButton(
          onPressed: funcRes,
          child: const Text(
            'click me to repeat again',
            style: TextStyle(
                color: Colors.blue, 
                fontSize: 25, fontWeight: FontWeight.w400)
          )
        )
      ],
    );
  }
}
