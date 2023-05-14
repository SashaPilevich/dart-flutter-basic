import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = 'New York is waiting for you!';
    } else if(resultScore <= 9){
      resultText = 'Chicago is waiting for you!';
    } else if(resultScore <= 12){
      resultText = 'Los Angeles is waiting for you!';
    } else{
      resultText = 'Boston is waiting for you!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
        TextButton(
          onPressed:resetHandler , 
          child: Text('Restart Quiz'),
          style: TextButton.styleFrom(primary: Colors.orange)
          ),
      ],
      )
    );
  }
}
