import 'package:flutter/material.dart';
void main() => runApp(MyAppVova());

class MyAppVova extends StatelessWidget {
  const MyAppVova({Key? key}) : super(key: key);
  void answerQuestion() {
    print('Answer chosen');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('my first app')),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('list of buttons'),
                  RaisedButton(
                      child: const Text('btn1'), onPressed: answerQuestion),
                  RaisedButton(
                      child: const Text('btn2'),
                      onPressed: () => print('btn2 is pressed')), //аноним. ф-ия
                  RaisedButton(
                      child: const Text('btn3'),
                      onPressed: () {          //аноним. ф-ия
                        print('btn3 is pressed!!!');
                      }),
                  RaisedButton(
                      child: const Text('btn4'), onPressed: answerQuestion)
                ])));  }}
