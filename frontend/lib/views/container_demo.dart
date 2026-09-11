import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.only(left: 8, top: 8),
        color: Colors.amber,
        width: 100,
        height: 100,
        child: Image.network(
          'https://www.iconarchive.com/show/octicons-icons-by-github/accessibility-16-icon.html',
        ),
      ),
    );
  }
}
