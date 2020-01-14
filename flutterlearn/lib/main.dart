import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void soundFunc(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded builFunc({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundFunc(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builFunc(color: Colors.red, soundNumber: 1),
              builFunc(color: Colors.green, soundNumber: 2),
              builFunc(color: Colors.blue, soundNumber: 3),
              builFunc(color: Colors.orange, soundNumber: 4),
              builFunc(color: Colors.yellow, soundNumber: 5),
              builFunc(color: Colors.purple, soundNumber: 6),
              builFunc(color: Colors.grey, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
