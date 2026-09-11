import 'dart:math';

import 'package:flutter/material.dart';

class RandomBackground extends StatefulWidget {
  const new({super.key});

  @override
  State<RandomBackground> createState() => _RandomBackgroundState();
}

class _RandomBackgroundState extends State<RandomBackground> {
  Color bgColor = Colors.blue;
  Random random = Random();
  int i = 0;

  void changeBackgroundColor() {
    int r = random.nextInt(256);
    int g = random.nextInt(256);
    int b = random.nextInt(256);
    i = random.nextInt(6);
    setState(() {
      bgColor = Color.fromRGBO(r, g, b, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Row(children: [
        for(i ; i < 6; i++) 
          Icon(Icons.card_giftcard, size: 60,)
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: changeBackgroundColor,
        child: Icon(Icons.update),
      ),
    );
  }
}
