import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);
  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  int _ques_ind = 0;
  void ques_titl() {
    setState(() {
      _ques_ind += 1;
    });
    print(_ques_ind);
  }

  final List<String> _questions = ['q11111111', 'q22222222', 'q3333333', 'q4'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My App V1')),
            body: Column(children: [
              Question(_questions[_ques_ind]),
              RaisedButton(child: Text('btn1'), onPressed: ques_titl),
              RaisedButton(child: Text('btn2'), onPressed: ques_titl),
              RaisedButton(child: Text('btn3'), onPressed: ques_titl),
              RaisedButton(child: Text('btn4'), onPressed: ques_titl)
            ])));
  }
}
