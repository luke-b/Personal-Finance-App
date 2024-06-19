import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personal_finance_app/models/transaction.dart';
import 'package:personal_finance_app/widgets/transaction_list.dart';

void main() {
  group('TransactionList Widget Tests', () {
    testWidgets('TransactionList should display list of transactions',
        (WidgetTester tester) async {
      final transactions = [
        Transaction(
          id: '1',
          userId: 'user1',
          description: 'Grocery Shopping',
          amount: 50.0,
          date: DateTime.now(),
        ),
        Transaction(
          id: '2',
          userId: 'user1',
          description: 'Gasoline',
          amount: 30.0,
          date: DateTime.now(),
        ),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TransactionList(transactions: transactions),
          ),
        ),
      );

      expect(find.text('Grocery Shopping'), findsOneWidget);
      expect(find.text('Amount: \$50.0'), findsOneWidget);
      expect(find.text('Gasoline'), findsOneWidget);
      expect(find.text('Amount: \$30.0'), findsOneWidget);
    });

    testWidgets('TransactionList should display no transactions message',
        (WidgetTester tester) async {
      final transactions = <Transaction>[];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TransactionList(transactions: transactions),
          ),
        ),
      );

      expect(find.text('No transactions found.'), findsOneWidget);
    });
  });
}
