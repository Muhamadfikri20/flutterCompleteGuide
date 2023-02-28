import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
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
                Answers(_answerQuestion),
                Answers(_answerQuestion),
                Answers(_answerQuestion),
              ],
            )));
  }
}
