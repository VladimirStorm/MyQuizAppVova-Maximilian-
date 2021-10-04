import 'package:flutter/material.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  int questNumber = 0;
  void anwerQuestion() {
    setState(() {
      questNumber += 1;
    });
    print(questNumber);
  }

  List<String> list_of_q = [
    'question #1',
    'question #2',
    'question #3',
    'question #4'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('title appbar')),
            body: Column(children: [
              Text(list_of_q[questNumber]),
              RaisedButton(child: Text('btn1'), onPressed: anwerQuestion),
              RaisedButton(child: Text('btn2'), onPressed: anwerQuestion),
              RaisedButton(child: Text('btn3'), onPressed: anwerQuestion)
            ])));
  }
}
