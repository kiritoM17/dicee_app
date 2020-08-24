import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = Random().nextInt(6) + 1;
  var rihthDiceNumber = Random().nextInt(6) + 1;
  void generateDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rihthDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              generateDiceNumber();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              generateDiceNumber();
            },
            child: Image.asset('images/dice$rihthDiceNumber.png'),
          ),
        ),
      ]),
    );
  }
}
