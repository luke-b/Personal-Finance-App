class Transaction {
  final String id;
  final String userId;
  final String description;
  final double amount;
  final DateTime date;

  // Constructor for creating a Transaction object
  Transaction({
    required this.id,
    required this.userId,
    required this.description,
    required this.amount,
    required this.date,
  });

  // Method to convert a Transaction object to a Map for database storage
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'description': description,
      'amount': amount,
      'date': date.toIso8601String(),
    };
  }

  // Factory method to create a Transaction object from a Map
  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'],
      userId: map['userId'],
      description: map['description'],
      amount: map['amount'],
      date: DateTime.parse(map['date']),
    );
  }

  // Override the toString method for easy debugging and logging
  @override
  String toString() {
    return 'Transaction{id: $id, userId: $userId, description: $description, amount: $amount, date: $date}';
  }
}
