import 'package:flutter/material.dart';

class Advice extends StatelessWidget {
  final textForAdvice;
  final VoidCallback nextHandler;
  Advice(this.textForAdvice, this.nextHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            textForAdvice,
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 120, 76, 167)),
          ),
          Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
            onPressed: nextHandler,
            child: Text('Next', style: TextStyle(fontSize: 22),),
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 120, 76, 167),fixedSize: Size(150, 40)),)
        ],
      ),
    );
  }
}
