import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Dice'),
            ),
            backgroundColor: Color(0xff293241),
          ),
          body: GameBody(),
          backgroundColor: Color(0xff3d5a80),
        ),
      ),
    );
  }
}

class GameBody extends StatefulWidget {
  const GameBody({Key? key}) : super(key: key);

  @override
  _GameBodyState createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = randomNumberFN();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = randomNumberFN();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            primary: Color(0xffFF7244),
          ),
          onPressed: () {
            setState(() {
              leftDiceNumber = 1;
              rightDiceNumber = 1;
            });
          },
          child: const Text(
            'Reset',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}

int randomNumberFN() {
  int randomNumber = Random().nextInt(6) + 1;
  return randomNumber;
}
