import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:personal_finance_app/models/budget.dart';
import 'package:personal_finance_app/services/chart_service.dart';

class BudgetChart extends StatelessWidget {
  final List<Budget> budgets;
  final ChartService _chartService = ChartService();

  BudgetChart({required this.budgets});

  @override
  Widget build(BuildContext context) {
    final seriesList = _chartService.createBarChart(budgets);
    return charts.BarChart(
      seriesList,
      animate: true,
    );
  }
}
