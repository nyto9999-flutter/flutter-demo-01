import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({Key? key, required this.totalScore, required this.round})
      : super(key: key);

  final int totalScore;
  final int round;

  @override
  Widget build(BuildContext context) {
    return RowButtons();
  }
}

class RowButtons extends StatelessWidget {
  const RowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(onPressed: () {}, child: Text('Start Over')),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const <Widget>[
              Text('Score: '),
              Text('9999'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const <Widget>[
              Text('Round: '),
              Text('999'),
            ],
          ),
        ),
        TextButton(onPressed: () {}, child: Text('Info')),
      ],
    );
  }
}
