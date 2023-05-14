import 'package:flutter/material.dart';
import 'package:flutter_second_app/advice.dart';
import 'package:flutter_second_app/restart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _advice = [
    'Be patient and persistent',
    'In order to get, you have to give',
    'Be your best at all times',
    'Don\'t be afraid of being afraid'
  ];
  var _indexOfAdvice = 0;
  void _changeAdvice() {
    setState(() {
      _indexOfAdvice = _indexOfAdvice + 1;
    });
  }

  void _resetToStart() {
    setState(() {
      _indexOfAdvice = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xDBFFFFFF),
          appBar: AppBar(
            title: Text('Choose your advice for this day!'),
            backgroundColor: Color.fromARGB(255, 120, 76, 167),
          ),
          body: _indexOfAdvice < _advice.length
              ? Advice(_advice[_indexOfAdvice],_changeAdvice)
              : Restart(_resetToStart),
    )
    );
  }
}
