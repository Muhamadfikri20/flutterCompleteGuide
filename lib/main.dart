import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your favorite color?', 'What\'s your favorite animarl?'];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              children: <Widget>[
                Question(questions[_questionIndex]),
                RaisedButton(
                  onPressed: answerQuestion,
                  child: Text('Answer 1'),
                ),
                RaisedButton(
                  onPressed: () => print('Answer 2 chose!'),
                  child: Text('Answer 2'),
                ),
                RaisedButton(
                  onPressed: () {
                    print('Answer 3 chosen');
                  },
                  child: Text('Answer 3'),
                )
              ],
            )));
  }
}
