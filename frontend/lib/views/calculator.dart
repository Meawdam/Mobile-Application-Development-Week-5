import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '';
  final firstNumController = TextEditingController();
  final secondNumController = TextEditingController();

  void sum() {
    String firstNumString = firstNumController.text.trim();
    String secondNumString = secondNumController.text.trim();
    if (firstNumString.isEmpty || secondNumString.isEmpty) {
      setState(() {
        result = 'Please enter both of fields';
      });
      return;
    }

    int? firstNum = int.tryParse(firstNumString);
    int? secondNum = int.tryParse(secondNumString);
    if (firstNum == null || secondNum == null) {
      setState(() {
        result = 'Incorrect input';
      });
      return;
    }
    setState(() {
      result = 'Result = ${firstNum + secondNum}';
    });
  }

  void clear() {
    setState(() {
      firstNumController.clear();
      secondNumController.clear();
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hint: Text('First number')),
                      controller: firstNumController,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text('+'),
                  SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hint: Text('Second number')),
                      controller: secondNumController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: .center,
                children: [
                  ElevatedButton(
                    onPressed: sum,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                    child: Text(
                      'Calculator',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: clear,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text('Clear', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(result, style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
