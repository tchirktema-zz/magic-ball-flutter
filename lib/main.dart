import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic ball fullter',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MagicBall(),
    );
  }
}


class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = Random().nextInt(5) + 1;

  void giveMeAnswer(){
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me AnyThing'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FlatButton(
              onPressed: (){
                giveMeAnswer();
              },
              child: Image.asset('assets/images/ball$answer.png')
          ),
        ),
      ),
    );
  }
}

