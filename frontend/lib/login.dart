import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  static const user = {'username': 'admin', 'password': '1234'};
  String errorText = '';

  void login() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username == user['username'] && password == user['password']) {
      setState(() {
        errorText = 'Welcome $username!';
      });
      return;
    }
    setState(() {
      errorText = 'Wrong username or password';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(hint: Text('Username')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(hint: Text('Password')),
              obscureText: true,
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: login,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text('Login', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          Text(errorText, style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
