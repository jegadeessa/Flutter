import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  String get scorePhrase {
    if (totalScore < 8) {
      return 'you are awesome!!!';
    } else {
      return 'Not good!!!!';
    }
  }

  Result({@required this.resetQuiz, @required this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            scorePhrase,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetQuiz,
              color: Colors.blue,
              child: Text(
                'Reset Quiz',
              ))
        ],
      ),
    );
  }
}
