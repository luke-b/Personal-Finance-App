import 'package:personal_finance_app/models/user.dart';
import 'package:personal_finance_app/services/database_service.dart';

class AuthenticationService {
  final DatabaseService databaseService;

  AuthenticationService(this.databaseService);

  Future<User?> login(String email, String password) async {
    final user = await databaseService.getUserByEmail(email);
    if (user != null && user.password == password) {
      return user;
    } else {
      throw Exception('Invalid email or password');
    }
  }

  Future<void> register(String email, String password, String name) async {
    final user = User(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      email: email,
      password: password,
    );
    await databaseService.insertUser(user);
  }
}
