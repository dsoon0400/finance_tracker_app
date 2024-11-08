import 'package:flutter/material.dart';
import '../widgets/budget_chart.dart';

class BudgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Budget')),
      body: Center(
        child: BudgetChart(), // Placeholder for budget chart
      ),
    );
  }
}
