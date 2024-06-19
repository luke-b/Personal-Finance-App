import 'package:flutter/material.dart';
import 'package:personal_finance_app/models/budget.dart';

class BudgetList extends StatelessWidget {
  final List<Budget> budgets;

  BudgetList({required this.budgets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: budgets.length,
      itemBuilder: (context, index) {
        final budget = budgets[index];
        return ListTile(
          title: Text(budget.category),
          subtitle: Text('Amount: \$${budget.amount}'),
        );
      },
    );
  }
}
