import 'package:flutter/material.dart';
import 'package:personal_finance_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return ListTile(
          title: Text(transaction.description),
          subtitle: Text('Amount: \$${transaction.amount}'),
          trailing: Text(transaction.date.toString().substring(0, 10)),
        );
      },
    );
  }
}
