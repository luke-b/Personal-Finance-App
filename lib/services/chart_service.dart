import 'package:charts_flutter/flutter.dart' as charts;
import 'package:personal_finance_app/models/transaction.dart';
import 'package:personal_finance_app/models/budget.dart';

class ChartService {
  List<charts.Series<dynamic, String>> getTransactionChartData(List<Transaction> transactions) {
    final data = transactions.map((transaction) {
      return TransactionChartData(transaction.description, transaction.amount);
    }).toList();

    return [
      charts.Series<TransactionChartData, String>(
        id: 'Transactions',
        domainFn: (TransactionChartData transaction, _) => transaction.description,
        measureFn: (TransactionChartData transaction, _) => transaction.amount,
        data: data,
      )
    ];
  }

  List<charts.Series<dynamic, String>> getBudgetChartData(List<Budget> budgets) {
    final data = budgets.map((budget) {
      return BudgetChartData(budget.category, budget.amount);
    }).toList();

    return [
      charts.Series<BudgetChartData, String>(
        id: 'Budgets',
        domainFn: (BudgetChartData budget, _) => budget.category,
        measureFn: (BudgetChartData budget, _) => budget.amount,
        data: data,
      )
    ];
  }
}

class TransactionChartData {
  final String description;
  final double amount;

  TransactionChartData(this.description, this.amount);
}

class BudgetChartData {
  final String category;
  final double amount;

  BudgetChartData(this.category, this.amount);
}
