import 'package:flutter/material.dart';
import '../models/expense.dart';

class AddExpense extends StatefulWidget {
  final Function(Expense) onAddExpense;

  AddExpense({required this.onAddExpense});

  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _submitData() {
    final title = _titleController.text;
    final amount = double.tryParse(_amountController.text) ?? 0;

    if (title.isEmpty || amount <= 0) return;

    widget.onAddExpense(Expense(title: title, amount: amount, date: DateTime.now()));

    _titleController.clear();
    _amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _submitData,
              child: Text('Add Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
