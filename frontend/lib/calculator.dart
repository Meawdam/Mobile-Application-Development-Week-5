import 'dart:math' as math;

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  String result = '';

  void sum() {
    String num1 = num1Controller.text.trim();
    String num2 = num2Controller.text.trim();

    int? n1 = int.tryParse(num1);
    int? n2 = int.tryParse(num2);

    if(n1 == null || n2 == null) {
      setState(() {
        result = 'Please input only numbers';
      });
      return;
    }
    setState(() {
      result = 'Result = ${n1 + n2}';
    });
  }

  void power() {
    String num1 = num1Controller.text.trim();
    String num2 = num2Controller.text.trim();

    int? n1 = int.tryParse(num1);
    int? n2 = int.tryParse(num2);

    if(n1 == null || n2 == null) {
      setState(() {
        result = 'Please input only numbers';
      });
      return;
    }
    setState(() {
      result = 'Result = ${math.pow(n1, n2).toInt()}';
    });
  }

  void clear() {
    setState(() {
      num1Controller.clear();
      num2Controller.clear();
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: num1Controller,
              decoration: InputDecoration(hint: Text('Number 1')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: num2Controller,
              decoration: InputDecoration(hint: Text('Number 2')),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: sum,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
            child: const Text('Sum', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: power,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text('Power', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: clear,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Clear', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          Text(result, style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
