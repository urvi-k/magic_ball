import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF59405c),
        leading: Icon(Icons.account_balance),
        title: Text('Magic Ball'),
      ),
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int num = 4;

  void changeBall() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFdbe3e5),
      child: Center(
        child: Expanded(
          child: FlatButton(
            child: Image.asset('images/ball$num.png'),
            onPressed: () {
              changeBall();
            },
          ),
        ),
      ),
    );
  }
}
