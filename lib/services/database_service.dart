import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:personal_finance_app/models/user.dart';
import 'package:personal_finance_app/models/transaction.dart' as my_transaction;
import 'package:personal_finance_app/models/budget.dart';
import 'package:personal_finance_app/models/financial_goal.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  static Database? _database;

  DatabaseService._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'personal_finance_app.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id TEXT PRIMARY KEY,
        name TEXT,
        email TEXT,
        password TEXT
      )
    ''');

    await _insertDefaultUser(db);

    await db.execute('''
      CREATE TABLE transactions (
        id TEXT PRIMARY KEY,
        userId TEXT,
        description TEXT,
        amount REAL,
        date TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE budgets (
        id TEXT PRIMARY KEY,
        userId TEXT,
        category TEXT,
        amount REAL
      )
    ''');
    await db.execute('''
      CREATE TABLE financial_goals (
        id TEXT PRIMARY KEY,
        userId TEXT,
        title TEXT,
        targetAmount REAL,
        currentAmount REAL,
        deadline TEXT
      )
    ''');
  }

  Future<void> _insertDefaultUser(Database db) async {
    var defaultUser = User(
      id: 'default_user_id',
      name: 'Default User',
      email: 'default@example.com',
      password: 'password', // Make sure to hash passwords in a real app
    );

    await db.insert(
      'users',
      defaultUser.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertUser(User user) async {
    final db = await database;
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<User?> getUserByEmail(String email) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );
    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    }
    return null;
  }

  Future<List<my_transaction.Transaction>> getTransactions() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('transactions');
    return List.generate(maps.length, (i) {
      return my_transaction.Transaction.fromMap(maps[i]);
    });
  }

  Future<List<Budget>> getBudgets() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('budgets');
    return List.generate(maps.length, (i) {
      return Budget.fromMap(maps[i]);
    });
  }

  Future<List<FinancialGoal>> getFinancialGoals() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('financial_goals');
    return List.generate(maps.length, (i) {
      return FinancialGoal.fromMap(maps[i]);
    });
  }
}
