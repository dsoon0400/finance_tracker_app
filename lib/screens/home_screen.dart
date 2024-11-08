import 'package:flutter/material.dart';
import 'budget_screen.dart';
import 'expense_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Finance Tracker')),
      body: Column(
        children: [
          Text('Welcome to Finance Tracker'),
          ElevatedButton(
            child: Text('Track Expenses'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpenseScreen()),
              );
            },
          ),
          ElevatedButton(
            child: Text('Manage Budget'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BudgetScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
