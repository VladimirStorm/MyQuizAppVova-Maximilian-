import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int q_indq;
  final List<Map<String, Object>> questionSq;
  final VoidCallback ansQuesq;

  Quiz(
      {required this.q_indq, required this.questionSq, required this.ansQuesq});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionSq[q_indq]['ques_text']),
        ...((questionSq[q_indq]['answ_text']) as List<String>).map((answerMap) {
          return Answer(ansQuesq, answerMap);
        }).toList()
      ],
    );
  }
}
