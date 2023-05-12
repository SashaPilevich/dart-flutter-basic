import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children:  [
            Text('Please, answer questions'),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
