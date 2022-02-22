import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded makeKeys(Color color, int num, String note) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$num.wav');
        },
        child: Text(note,
            style: const TextStyle(color: Colors.white, fontSize: 30.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              makeKeys(Colors.red, 1, 'Sa'),
              makeKeys(Colors.orange, 2, 'Re'),
              makeKeys(Colors.yellow, 3, 'Ga'),
              makeKeys(Colors.green, 4, 'Ma'),
              makeKeys(Colors.teal, 5, 'Pa'),
              makeKeys(Colors.blue, 6, 'Dha'),
              makeKeys(Colors.purple, 7, 'Ni')
            ],
          ),
        ),
      ),
    );
  }
}
