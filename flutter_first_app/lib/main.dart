import 'package:flutter/material.dart';
import './question.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your name?',
      'How old are you?',
      'What do you do?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () => print('Answer 3 chosen'),
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
