import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
        questionIndex = questionIndex + 1;
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
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () => print('Answer 3 chosen'),
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
