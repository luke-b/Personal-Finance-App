import 'package:flutter/material.dart';
import 'package:personal_finance_app/models/financial_goal.dart';

class GoalList extends StatelessWidget {
  final List<FinancialGoal> goals;

  GoalList({required this.goals});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: goals.length,
      itemBuilder: (context, index) {
        final goal = goals[index];
        return ListTile(
          title: Text(goal.title),
          subtitle: Text('Target: \$${goal.targetAmount} - Current: \$${goal.currentAmount}'),
          trailing: Text(goal.deadline.toString().substring(0, 10)),
        );
      },
    );
  }
}
