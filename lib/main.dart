import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question = 0;

  void _reset() {
    setState(() {
      _question = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _question = _question + 1;
    });
    print('Answer');
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questions': 'What\'s your fav food',
        'answers': ['Pizza', 'Burger', 'Bbq']
      },
      {
        'questions': 'What\'s your fav sport',
        'answers': ['Football', 'Tennis', 'Cricket']
      },
      {
        'questions': 'What\'s your fav celebrity',
        'answers': ['Cole Sprouse', 'Sam Claffin', 'Justin']
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first app'),
            ),
            body: Column(children: [
              _question < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      question: _question,
                      questions: _questions,
                    )
                  : Result(_reset),
            ])));
  }
}
