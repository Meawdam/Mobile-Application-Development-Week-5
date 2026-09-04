import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  String message = 'Hello World';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My app')),
      body: Text(message),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (message == 'Hello World') {
            setState(() {
              message = 'Button pressed!';
            });
          } else {
            setState(() {
              message = 'Hello World';
            });
          }
        },
        child: Icon(Icons.update),
      ),
    );
  }
}