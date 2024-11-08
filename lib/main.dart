import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(FinanceTrackerApp());
}

class FinanceTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AuthScreen(), // Start with authentication
    );
  }
}
