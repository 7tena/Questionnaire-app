import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;

  Result(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You did it'),
          FlatButton(onPressed: resetHandler, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
