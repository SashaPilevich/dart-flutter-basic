import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String variantOfAnswer;
  Answer(this.selectedHandler, this.variantOfAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed:selectedHandler,
        child: Text(variantOfAnswer),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
            foregroundColor: MaterialStateProperty.all(Colors.white)
            ),
        // style: ElevatedButton.styleFrom(primary: Colors.lime, onPrimary: Colors.white)
      ),
    );
  }
}
