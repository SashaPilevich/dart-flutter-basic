import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  final questions = const[
      {
        'questionText': 'What\'s your favorite country?',
        'answers': ['Spain', 'Portugal', 'German', 'Poland']
      },
      {
        'questionText': 'What\'s your favorite coffee?',
        'answers': ['Capuchino', 'Latte', 'Americano', 'Ruf']
      },
      {
        'questionText': 'What\'s your favorite basketball team?',
        'answers': [
          'Boston Celtics',
          'Brooklyn Nets',
          'Chicago Bulls',
          'Milwaukee Bucks'
        ]
      },
    ];
  var _questionIndex = 0;
  void _answerQuestion() {
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
        body:_questionIndex < questions.length ? Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child: Text('You did it!'),),
      ),
    );
  }
}
