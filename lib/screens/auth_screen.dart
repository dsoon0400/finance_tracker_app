import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Placeholder: Navigate to HomeScreen after login
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
