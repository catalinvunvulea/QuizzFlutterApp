import 'package:flutter/material.dart';

class Answer extends StatelessWidget {


 final Function selectHandler;
 final String answerText;

Answer(this.selectHandler, this.answerText); //this is like an init for a class; this = self

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
