import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
  Answer(this.selectedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ()=>selectedHandler(),
        child: Text('Answer 1'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
      ),
    );
  }
}
