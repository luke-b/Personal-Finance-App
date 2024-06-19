class User {
  final String id;
  final String name;
  final String email;
  final String password;

  // Constructor for creating a User object
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  // Method to convert a User object to a Map for database storage
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  // Factory method to create a User object from a Map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
    );
  }

  // Override the toString method for easy debugging and logging
  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, password: $password}';
  }
}
