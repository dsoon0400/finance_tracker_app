import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BudgetChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  BudgetChart(this.seriesList, {this.animate = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: charts.BarChart(
        seriesList,
        animate: animate,
      ),
    );
  }
}
