import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'prompt.dart';
import 'control.dart';
import 'score.dart';
import 'game_model.dart';

void main() {
  runApp(BullesEyeApp());
}

class BullesEyeApp extends StatelessWidget {
  const BullesEyeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return const MaterialApp(
      title: 'Bullseye',
      home: GamePage(),
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late GameModel _model;

  @override
  void initState() {
    super.initState();
    _model = GameModel(50);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Prompt(
              targetValue: 100,
            ),
            Control(model: _model),
            TextButton(
              onPressed: () {
                _showAlert(context);
              },
              child: Text(
                'hit me',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Score(totalScore: _model.totalScore, round: _model.round),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    var okButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('Awesome'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hellow there'),
          content: Text('This is my pop-up'),
          actions: [
            okButton,
          ],
          elevation: 5,
        );
      },
    );
  }
}
