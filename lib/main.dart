import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyQuiz1());

class MyQuiz1 extends StatefulWidget {
  @override
  _MyQuiz1State createState() => _MyQuiz1State();
}

class _MyQuiz1State extends State<MyQuiz1> {
  final _questionS = const [
    {
      'ques_text': 'what is your fav-t color?',
      'answ_text': ['red', 'blue', 'green']
    },
    {
      'ques_text': 'what is your fav-t fruit?',
      'answ_text': ['apple', 'peach', 'melon']
    },
    {
      'ques_text': 'what is your fav-t season?',
      'answ_text': ['summer', 'autumn', 'winter']
    },
  ];
  int q_ind = 0;
  void ansQues() {
    setState(() {
      q_ind += 1;
    });
    print(q_ind);

    if (q_ind < _questionS.length) {
      print('We have more questions1');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('QuizAppVova')),
          body: q_ind < _questionS.length
              ? Quiz(q_indq: q_ind, questionSq: _questionS, ansQuesq: ansQues)
              : Result()),
    );
  }
}
