import 'package:flutter/material.dart';
import 'package:flutter1_complete_guide/answer.dart';
import 'package:flutter1_complete_guide/question.dart';
import 'package:flutter1_complete_guide/result.dart';
import 'quiz.dart';

void main() => runApp(MyQuizApp());

class MyQuizApp extends StatefulWidget {
  @override
  _MyQuizAppState createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  final ans_ques_list = const [
    {
      'questionMap': 'q1',
      'answerMap': [
        {'text': 'a1', 'score': 10},
        {'text': 'a2', 'score': 20},
        {'text': 'a3', 'score': 30}
      ]
    },
    {
      'questionMap': 'q2',
      'answerMap': [
        {'text': 'a2-1', 'score': 10},
        {'text': 'a2-2', 'score': 20},
        {'text': 'a2-3', 'score': 30}
      ]
    },
    {
      'questionMap': 'q3',
      'answerMap': [
        {'text': 'a3-1', 'score': 10},
        {'text': 'a3-2', 'score': 20},
        {'text': 'a3-3', 'score': 30}
      ]
    }
  ];
  int quesInd = 0;
  var _totalScore = 0;
  void ans_ques_func(int score) {
    _totalScore += score;

    setState(() {
      quesInd += 1;
    });
    print(quesInd);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const Text('this is my 45 app',
              style: TextStyle(color: Colors.redAccent))),
      body: quesInd < ans_ques_list.length
          ? Quiz(ans_ques_list, ans_ques_func, quesInd)
          : Result(_totalScore),
    ));
  }
}
