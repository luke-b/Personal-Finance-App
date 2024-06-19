class FinancialGoal {
  final String id;
  final String userId;
  final String title;
  final double targetAmount;
  final double currentAmount;
  final DateTime deadline;

  // Constructor for creating a FinancialGoal object
  FinancialGoal({
    required this.id,
    required this.userId,
    required this.title,
    required this.targetAmount,
    required this.currentAmount,
    required this.deadline,
  });

  // Method to convert a FinancialGoal object to a Map for database storage
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'targetAmount': targetAmount,
      'currentAmount': currentAmount,
      'deadline': deadline.toIso8601String(),
    };
  }

  // Factory method to create a FinancialGoal object from a Map
  factory FinancialGoal.fromMap(Map<String, dynamic> map) {
    return FinancialGoal(
      id: map['id'],
      userId: map['userId'],
      title: map['title'],
      targetAmount: map['targetAmount'],
      currentAmount: map['currentAmount'],
      deadline: DateTime.parse(map['deadline']),
    );
  }

  // Override the toString method for easy debugging and logging
  @override
  String toString() {
    return 'FinancialGoal{id: $id, userId: $userId, title: $title, targetAmount: $targetAmount, currentAmount: $currentAmount, deadline: $deadline}';
  }
}
