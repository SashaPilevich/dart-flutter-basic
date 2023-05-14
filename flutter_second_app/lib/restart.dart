import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final VoidCallback restartHandler;
  Restart(this.restartHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
        child:
            TextButton(
              onPressed: restartHandler,
              child: Text('Start again!', style: TextStyle(fontSize: 24),),
              style: TextButton.styleFrom(primary: Color.fromARGB(255, 120, 76, 167)),));
  }
}
