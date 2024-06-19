import 'package:flutter_test/flutter_test.dart';
import 'package:personal_finance_app/models/transaction.dart';

void main() {
  group('Transaction Model Tests', () {
    test('Transaction should be created with correct properties', () {
      final transaction = Transaction(
        id: '1',
        userId: 'user1',
        description: 'Grocery Shopping',
        amount: 50.0,
        date: DateTime.now(),
      );

      expect(transaction.id, '1');
      expect(transaction.userId, 'user1');
      expect(transaction.description, 'Grocery Shopping');
      expect(transaction.amount, 50.0);
      expect(transaction.date, isA<DateTime>());
    });

    test('Transaction fromMap should create a Transaction object', () {
      final transactionMap = {
        'id': '1',
        'userId': 'user1',
        'description': 'Grocery Shopping',
        'amount': 50.0,
        'date': DateTime.now().toString(),
      };

      final transaction = Transaction.fromMap(transactionMap);

      expect(transaction.id, '1');
      expect(transaction.userId, 'user1');
      expect(transaction.description, 'Grocery Shopping');
      expect(transaction.amount, 50.0);
      expect(transaction.date, isA<DateTime>());
    });

    test('Transaction toMap should return a map of the Transaction object', () {
      final transaction = Transaction(
        id: '1',
        userId: 'user1',
        description: 'Grocery Shopping',
        amount: 50.0,
        date: DateTime.now(),
      );

      final transactionMap = transaction.toMap();

      expect(transactionMap['id'], '1');
      expect(transactionMap['userId'], 'user1');
      expect(transactionMap['description'], 'Grocery Shopping');
      expect(transactionMap['amount'], 50.0);
      expect(transactionMap['date'], isA<String>());
    });
  });
}
