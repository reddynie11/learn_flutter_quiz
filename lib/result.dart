import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restartQuiz;
  Result(this.score, this.restartQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "You answered $score questions correctly out of 3",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
          ),
          FlatButton(
            child: Text('Play again'),
            onPressed: restartQuiz,
            textColor: Colors.red[400],
          ),
        ],
      ),
    );
  }
}
