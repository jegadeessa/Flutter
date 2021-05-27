import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question.dart';
import 'Result.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<myApp> {
  var questionIndex = 0;
  var totalScore = 0;
  var questions = [
    {
      'questionText': 'What\'s your favorite dish?',
      'answers': [
        {'text': 'egg', 'score': 10},
        {'text': 'dosa', 'score': 5},
        {'text': 'briyani', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favorite pet?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 5},
        {'text': 'elephant', 'score': 6}
      ]
    }
  ];

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  void questionAnswer(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First'),
            ),
            body: questionIndex < questions.length
                ? Column(
                    children: [
                      Question(questions[questionIndex]['questionText']),
                      ...(questions[questionIndex]['answers']
                              as List<Map<String, Object>>)
                          .map((answer) => Answer(
                              () => questionAnswer(answer['score']),
                              answer['text']))
                    ],
                  )
                : Result(resetQuiz: resetQuiz, totalScore: totalScore)));
  }
}
