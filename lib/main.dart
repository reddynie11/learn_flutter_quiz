import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _correctAnswers = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _correctAnswers = 0;
    });
  }

  void _answerQuestion(int score) {
    _correctAnswers += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'question': 'Who is the founder of JavaScript?',
        'answer': [
          {'option':'Brendan Eich', 'score': 1}, 
          {'option':'Chris Beard', 'score': 0}, 
          {'option':'John Resig', 'score': 0}
        ]
      },
      {
        'question': 'Who is the founder of Python?',
        'answer': [
          {'option':'Brendan Eich', 'score': 0}, 
          {'option':'Chris Beard', 'score' : 0}, 
          {'option':'Guido Rossum', 'score': 1}
          ]
      },
      {
        'question': 'Who is the founder of Dart?',
        'answer': [
          {'option':'Alan Kay', 'score':0}, 
          {'option':'Lars Bak', 'score':1},
          {'option':'Peter Duetsh', 'score': 0}
        ]
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First Flutter App'),
              backgroundColor: Colors.red[400],
              //centerTitle: true,
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion,
                  )
                : Result(_correctAnswers , _resetQuiz)
        ),
      );
  }
}
