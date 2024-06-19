import 'package:flutter_test/flutter_test.dart';
import 'package:personal_finance_app/models/user.dart';

void main() {
  group('User Model Tests', () {
    test('User should be created with correct properties', () {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        password: 'password123',
      );

      expect(user.id, '1');
      expect(user.name, 'John Doe');
      expect(user.email, 'john.doe@example.com');
      expect(user.password, 'password123');
    });

    test('User fromMap should create a User object', () {
      final userMap = {
        'id': '1',
        'name': 'John Doe',
        'email': 'john.doe@example.com',
        'password': 'password123',
      };

      final user = User.fromMap(userMap);

      expect(user.id, '1');
      expect(user.name, 'John Doe');
      expect(user.email, 'john.doe@example.com');
      expect(user.password, 'password123');
    });

    test('User toMap should return a map of the User object', () {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        password: 'password123',
      );

      final userMap = user.toMap();

      expect(userMap['id'], '1');
      expect(userMap['name'], 'John Doe');
      expect(userMap['email'], 'john.doe@example.com');
      expect(userMap['password'], 'password123');
    });
  });
}
