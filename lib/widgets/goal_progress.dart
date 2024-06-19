import 'package:flutter/material.dart';
import 'package:personal_finance_app/models/financial_goal.dart';

class GoalProgress extends StatelessWidget {
  final FinancialGoal goal;

  GoalProgress({required this.goal});

  @override
  Widget build(BuildContext context) {
    final progress = (goal.currentAmount / goal.targetAmount) * 100;
    return Column(
      children: [
        Text(goal.goalName),
        LinearProgressIndicator(
          value: progress / 100,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        Text('${goal.currentAmount} / ${goal.targetAmount}'),
      ],
    );
  }
}
