import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Magic 8 ball",
      home: BallApp(),
    );
  }
}

class BallApp extends StatefulWidget {
  const BallApp({Key? key}) : super(key: key);

  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ball = 0;
  void giveAnswer() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text("Ask Me Anything?"),
      ),
      body: Center(
        child: TextButton(
          onPressed: giveAnswer,
          child: Image.asset("assets/images/ball$ball.png"),
        ),
      ),
    );
  }
}
