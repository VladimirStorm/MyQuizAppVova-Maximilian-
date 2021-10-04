import 'package:flutter/material.dart';

void main() => runApp(MyAppVova());

// ignore: must_be_immutable
class MyAppVova extends StatelessWidget {
  int questionIndex = 0;
  void answerQuestion() {
    questionIndex += 1;
    // ignore: avoid_print
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
   List <String> questions = [
    'What\'s your favourite color?',
   'What\'s your favourite animal?',
   'What\'s your favourite lesson?',
   ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar Questions')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(questions [questionIndex]),
              RaisedButton(child: const Text('btn1'), onPressed: answerQuestion)
            ]),
      ),
    );
  }
}
