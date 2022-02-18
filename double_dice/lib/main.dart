import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text('Double Dice'),
          backgroundColor: Colors.blue,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDie = 1;
  int rightDie = 2;

  void shuffle() {
    setState(() {
      leftDie = 1 + Random().nextInt(6);
      rightDie = 1 + Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                shuffle();
              },
              child: Image.asset('images/dice$leftDie.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                shuffle();
              },
              child: Image.asset('images/dice$rightDie.png'),
            ),
          )
        ],
      ),
    );
  }
}
