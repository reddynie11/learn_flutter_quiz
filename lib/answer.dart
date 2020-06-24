import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selectHandler;
  final String ansText;
  Answer(this.ansText, this.selectHandler);
  @override 
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(ansText),
      ),
    );
  }
}