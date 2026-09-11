import 'dart:math';

import 'package:flutter/material.dart';

class RandomDemo extends StatefulWidget {
  const new({super.key});

  @override
  State<RandomDemo> createState() => _RandomDemoState();
}

class _RandomDemoState extends State<RandomDemo> {
  int num = 0;

  void getNum() {
    setState(() {
      num = 1 + Random().nextInt(6);
    });
  }

  @override
  void initState() {
    getNum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text('Random number = $num', style: TextStyle(fontSize: 24)),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: getNum, child: Text('Generate')),
            ],
          ),
        ),
      ),
    );
  }
}
