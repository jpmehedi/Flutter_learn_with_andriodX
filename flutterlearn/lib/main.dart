import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void soundFunc(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.red,
              onPressed: () {
                soundFunc(1);
              },
            ),
            FlatButton(
              color: Colors.orange,
              onPressed: () {
                soundFunc(2);
              },
            ),
            FlatButton(
              color: Colors.green,
              onPressed: () {
                soundFunc(3);
              },
            ),
            FlatButton(
              color: Colors.yellow,
              onPressed: () {
                soundFunc(4);
              },
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                soundFunc(5);
              },
            ),
            FlatButton(
              color: Colors.purple,
              onPressed: () {
                soundFunc(7);
              },
            ),
          ],
        ),
      ),
    );
  }
}
