import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> ans_ques_listQ;
  int quizIndQ;
  final Function ans_quiz_funcQ;
  Quiz(this.ans_ques_listQ, this.quizIndQ, this.ans_quiz_funcQ);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(ans_ques_listQ[quizIndQ]['questionMap']),
        ...((ans_ques_listQ[quizIndQ]['answerMap'])
                as List<Map<String, Object>>)
            .map((v1map) {
          return Answer(
            v1map['text'].toString(),
            () => ans_quiz_funcQ(
              (v1map['score']),
            ),
          ); // Answer
        }).toList()
      ],
    );
  }
}
