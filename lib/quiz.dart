import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ans_ques_listQ;
  final Function ans_ques_funcQ;
  final int quesIndQ;
  const Quiz(this.ans_ques_listQ, this.ans_ques_funcQ, this.quesIndQ);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Вопросы и ответы'),
      Question(ans_ques_listQ[quesIndQ]['questionMap']),
      //здесь добавл-ся ещё лист виджетов, после трёх точек, с помощью mapping
      ...((ans_ques_listQ[quesIndQ]['answerMap']) as List<Map<String, Object>>)
          .map((ansMapArg) {
        return Answer(
          ansMapArg['text'],
          () => ans_ques_funcQ(ansMapArg['score']),
        );
      }).toList()
    ]);
  }
}
