import 'package:flutter/material.dart';
import 'package:flutter_first_app/quiz.dart';
import 'package:flutter_first_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite city?',
      'answers': [
        {'text': 'New York', 'score': 2},
        {'text': 'Boston', 'score': 5},
        {'text': 'Chicago', 'score': 3},
        {'text': 'Los Angeles', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite coffee?',
      'answers': [
        {'text': 'Cappuccino', 'score': 5},
        {'text': 'Americano', 'score': 2},
        {'text': 'Latte', 'score': 3},
        {'text': 'Raf', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite basketball team?',
      'answers': [
        {'text': 'Boston Celtics', 'score': 5},
        {'text': 'New York Knicks', 'score': 2},
        {'text': 'Chicago Bulls', 'score': 3},
        {'text': 'Los Angeles Lakers', 'score': 4}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore),
      ),
    );
  }
}
