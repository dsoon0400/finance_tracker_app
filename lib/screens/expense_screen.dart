import 'package:flutter/material.dart';
import '../widgets/expense_list.dart';
import '../widgets/add_expense.dart';
import '../models/expense.dart';

class ExpenseScreen extends StatefulWidget {
  @override
  _ExpenseScreenState createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final List<Expense> _expenses = [];

  void _addExpense(Expense expense) {
    setState(() {
      _expenses.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expenses')),
      body: Column(
        children: [
          AddExpense(onAddExpense: _addExpense),
          Expanded(child: ExpenseList(expenses: _expenses)),
        ],
      ),
    );
  }
}
