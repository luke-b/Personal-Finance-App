import 'package:flutter/material.dart';
import 'package:personal_finance_app/screens/transaction_screen.dart';
import 'package:personal_finance_app/screens/budget_screen.dart';
import 'package:personal_finance_app/screens/goal_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionScreen()),
                );
              },
              child: Text('Transactions'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BudgetScreen()),
                );
              },
              child: Text('Budgets'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GoalScreen()),
                );
              },
              child: Text('Goals'),
            ),
          ],
        ),
      ),
    );
  }
}
