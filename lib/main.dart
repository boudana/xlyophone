import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: XlyphoneApp(),
    ),
  ));
}

class XlyphoneApp extends StatelessWidget {
  void playSound(int numberNote) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$numberNote.wav');
  }

  Expanded builtKey({Color color, int numberNote}) {
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numberNote);
        }, child: null,


      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        builtKey(color: Colors.yellow, numberNote: 1),
        builtKey(color: Colors.red, numberNote: 2),
        builtKey(color: Colors.green, numberNote: 3),
        builtKey(color: Colors.orange, numberNote: 4),
        builtKey(color: Colors.blueAccent, numberNote: 5),
        builtKey(color: Colors.purple, numberNote: 6),
        builtKey(color: Colors.blueGrey, numberNote: 7),
      ],
    );
  }
}
