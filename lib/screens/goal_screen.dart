import 'package:flutter/material.dart';
import 'package:personal_finance_app/models/financial_goal.dart';
import 'package:personal_finance_app/services/database_service.dart';

class GoalScreen extends StatefulWidget {
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  late Future<List<FinancialGoal>> _goalsFuture;

  @override
  void initState() {
    super.initState();
    _goalsFuture = DatabaseService().getFinancialGoals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goals'),
      ),
      body: FutureBuilder<List<FinancialGoal>>(
        future: _goalsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No goals found.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final goal = snapshot.data![index];
                return ListTile(
                  title: Text(goal.title),
                  subtitle: Text('Target: \$${goal.targetAmount} - Current: \$${goal.currentAmount}'),
                  trailing: Text(goal.deadline.toString().substring(0, 10)),
                );
              },
            );
          }
        },
      ),
    );
  }
}
