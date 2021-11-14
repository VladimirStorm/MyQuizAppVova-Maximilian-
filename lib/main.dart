import 'package:flutter/material.dart';
import 'package:flutter1_complete_guide/quiz.dart';
import 'answer.dart';
import 'question.dart';
import 'result.dart';

void main() {
  runApp(MyQuizApp());
}

class MyQuizApp extends StatefulWidget {
  @override
  _MyQuizAppState createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  @override
  final ans_ques_list = [
    {
      'questionMap': 'q1',
      'answerMap': [
        {'text': 'a1', 'score': 10},
        {'text': 'a2', 'score': 20},
        {'text': 'a3', 'score': 30},
      ],
    },
    {
      'questionMap': 'q2',
      'answerMap': [
        {'text': 'a21', 'score': 10},
        {'text': 'a22', 'score': 20},
        {'text': 'a23', 'score': 30},
      ],
    },
    {
      'questionMap': 'q3',
      'answerMap': [
        {'text': 'a31', 'score': 10},
        {'text': 'a32', 'score': 20},
        {'text': 'a33', 'score': 30},
      ],
    },
  ];

  int quizInd = 0;
  var quizResult = 0;

  void resZero() {
    setState(() {
      quizInd = 0;
      quizResult = 0;
    });
  }

  void ans_quiz_func(int score) {
    quizResult += score;
    setState(() {
      quizInd += 1;
    });
    print(quizInd);
    print(quizResult);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('my 55 app!'),
      ),
      body: quizInd < ans_ques_list.length
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Вопросник на выпускной',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                Quiz(ans_ques_list, quizInd, ans_quiz_func)
              ],
            )
          : Result(quizResult, resZero),
    ));
  }
}
