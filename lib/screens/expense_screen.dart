import 'package:flutter/material.dart';
import '../widgets/expense_list.dart';
import '../widgets/add_expense.dart';

class ExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expenses')),
      body: Column(
        children: [
          AddExpense(),
          Expanded(child: ExpenseList()),
        ],
      ),
    );
  }
}
