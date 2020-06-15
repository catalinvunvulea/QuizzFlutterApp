import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  //this can be also writen as follow:  void main() => runApp(MyApp())
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //we create a class of type Stateless or Statefull

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //"_" in front of the class name, will turn this class into a private one
  var _questionIndex =
      0; //this is not added fter build as we don't wish to reset it
  void _answeredQuestion() {
    setState(() {
      //use this funciton to reload the screen/widgets
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //we add a method called build that will return a Widget
    var questions = [ //to create a map (like a dicitonary) use Map() or {}
      {
        "question": "What is your favourite colour?",
        "answer": ["Red", "Yellow", "Blue", "Green"]
      },
      {
        "question": "Your favourite animal is?",
        "answer": ["Horse", "Cat", "Dog", "Elephant"]
      },
{
        "question": "What is your favourile programming language?",
        "answer": ["Swift", "Dart", "Java", "C++", "JavaScript"]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My AppBar title'),
          ),
          body: Column(
            children: <Widget>[
              Question(
                questions[_questionIndex]["question"], //we access the index in the array/list and then the key
              ),
              ...(questions[_questionIndex]["answer"] as List<String>).map((answerX) {
              return Answer(_answeredQuestion, answerX);
              }).toList()
            ],
          ),
          ),
    );
  }
}
