class Budget {
  final String id;
  final String userId;
  final String category;
  final double amount;

  // Constructor for creating a Budget object
  Budget({
    required this.id,
    required this.userId,
    required this.category,
    required this.amount,
  });

  // Method to convert a Budget object to a Map for database storage
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'category': category,
      'amount': amount,
    };
  }

  // Factory method to create a Budget object from a Map
  factory Budget.fromMap(Map<String, dynamic> map) {
    return Budget(
      id: map['id'],
      userId: map['userId'],
      category: map['category'],
      amount: map['amount'],
    );
  }

  // Override the toString method for easy debugging and logging
  @override
  String toString() {
    return 'Budget{id: $id, userId: $userId, category: $category, amount: $amount}';
  }
}
