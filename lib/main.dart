import 'package:flutter/material.dart';

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

class GameBody extends StatelessWidget {
  const GameBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
