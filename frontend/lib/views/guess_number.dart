import 'dart:math';

import 'package:flutter/material.dart';

class GuessNumber extends StatefulWidget {
  const GuessNumber({super.key});

  @override
  State<GuessNumber> createState() => _GuessNumberState();
}

class _GuessNumberState extends State<GuessNumber> {
  Random rand = Random();
  final input = TextEditingController();
  int num = 0;
  int chance = 3;
  String result = '';
  String button = 'Guess';

  int randomNum() {
    return num = rand.nextInt(10);
  }

  void guess() {
    String guess = input.text.trim();
    if (guess.isEmpty) {
      setState(() {
        result = 'Please, enter the field';
      });
      return;
    }

    int? guessNum = int.tryParse(guess);
    if (guessNum == null) {
      setState(() {
        result = 'Please, enter only number';
      });
      return;
    }

    if (guessNum < 0 || guessNum > 9) {
      setState(() {
        result = 'Please, enter a number between 0-9';
      });
      return;
    }

    chance--;
    if (guessNum == num) {
      setState(() {
        result = 'Correct, you win!';
        button = 'Replay';
      });
      return;
    }

    if (chance == 0) {
      setState(() {
        result = 'Sorry, you lose. The answer is $num';
        button = 'Replay';
      });
      return;
    }

    setState(() {
      if (guessNum > num) {
        result = '$guessNum is too large, $chance chance(s) left!';
      } else {
        result = '$guessNum is too small, $chance chance(s) left!';
      }
    });
  }

  void replay() {
    setState(() {
      chance = 3;
      result = '';
      input.clear();
      randomNum();
      button = 'Guess';
    });
  }

  @override
  void initState() {
    randomNum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            Text('Guess a number game', style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: input,
                decoration: InputDecoration(hint: Text('guess a number 0-9')),
              ),
            ),
            SizedBox(height: 16),
            Text(result, style: TextStyle(color: Colors.red)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: button == 'Guess' ? guess : replay,
              child: Text(button),
            ),
          ],
        ),
      ),
    );
  }
}
