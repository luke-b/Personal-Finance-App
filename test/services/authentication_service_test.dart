import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:personal_finance_app/models/user.dart';
import 'package:personal_finance_app/services/authentication_service.dart';
import 'package:personal_finance_app/services/database_service.dart';

class MockDatabaseService extends Mock implements DatabaseService {}

void main() {
  group('AuthenticationService Tests', () {
    late AuthenticationService authenticationService;
    late MockDatabaseService mockDatabaseService;

    setUp(() {
      mockDatabaseService = MockDatabaseService();
      authenticationService = AuthenticationService(mockDatabaseService);
    });

    test('login should return user if credentials are correct', () async {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        password: 'password123',
      );

      when(mockDatabaseService.getUserByEmail('john.doe@example.com'))
          .thenAnswer((_) async => user);

      final result = await authenticationService.login(
          'john.doe@example.com', 'password123');

      expect(result, user);
    });

    test('login should throw exception if credentials are incorrect', () async {
      when(mockDatabaseService.getUserByEmail('john.doe@example.com'))
          .thenAnswer((_) async => null);

      expect(
          authenticationService.login('john.doe@example.com', 'wrongpassword'),
          throwsException);
    });

    test('register should insert user into database', () async {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        password: 'password123',
      );

      when(mockDatabaseService.insertUser(any)).thenAnswer((_) async => null);

      await authenticationService.register(
          'john.doe@example.com', 'password123', 'John Doe');

      verify(mockDatabaseService.insertUser(any)).called(1);
    });
  });
}
