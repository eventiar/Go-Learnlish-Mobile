import "package:flutter/material.dart";
import "package:hexcolor/hexcolor.dart";
import 'package:golearnlish/screens/quiz/quiz.dart';
import 'package:golearnlish/screens/quiz/result.dart';

class MainQuiz extends StatefulWidget {
  const MainQuiz({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainQuizState();
  }
}

class _MainQuizState extends State<MainQuiz> {
  static const _data = [
    {
      'questionText':
          'Flutter is an _____ mobile aplication development framework developed by Google.',
      'answers': [
        {'text': 'Open-source', 'score': 10.00},
        {'text': 'Shareware', 'score': 4.61},
        {'text': 'Both', 'score': 1.95},
        {'text': 'None of the above', 'score': 0.00},
      ]
    },
    {
      'questionText':
          'Flutter apps are written in the _____ language and make use of many advanced features of this language.',
      'answers': [
        {'text': 'Java', 'score': 2.3},
        {'text': 'HTML', 'score': 0.32},
        {'text': 'JavaScript', 'score': 3.00},
        {'text': 'Dart', 'score': 10.00},
      ]
    },
    {
      'questionText': 'Which of the following widgets is used for layouts?',
      'answers': [
        {'text': 'Text', 'score': 0.64},
        {'text': 'Column', 'score': 10.00},
        {'text': 'Inkwell', 'score': 3.28},
        {'text': 'Expanded', 'score': 1.02}
      ]
    },
    {
      'questionText': 'When was Flutter first described?',
      'answers': [
        {'text': '2012', 'score': 0.12},
        {'text': '2013', 'score': 2.13},
        {'text': '2017', 'score': 6.42},
        {'text': '2015', 'score': 10.00}
      ]
    },
    {
      'questionText': 'When was Flutter released?',
      'answers': [
        {'text': '2016', 'score': 5.53},
        {'text': '2017', 'score': 10.00},
        {'text': '2013', 'score': 2.47},
        {'text': '2019', 'score': 2.35}
      ]
    }
  ];

  var _indexQuestion = 0;
  double _totalScore = 0.00;

  void _answerQuestion(double score) {
    _totalScore += score;

    setState(() {
      _indexQuestion += 1;
    });
  }

  void _restart() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              'Quiz',
              style: TextStyle(color: Color(0xFF1A1C24)),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.account_circle),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ],
            backgroundColor: Colors.red,
          ),
          body: Align(
              alignment: Alignment.center,
              child: (_indexQuestion <= 4 && _indexQuestion >= 0)
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      indexQuestion: _indexQuestion,
                      data: _data)
                  : Result(_totalScore, _restart))),
    );
  }
}
