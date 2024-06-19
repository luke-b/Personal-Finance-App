import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:personal_finance_app/state/user_state.dart';
import 'package:personal_finance_app/screens/login_screen.dart';
import 'package:personal_finance_app/screens/home_screen.dart';
import 'package:personal_finance_app/services/authentication_service.dart';
import 'package:personal_finance_app/services/database_service.dart';

void main() {
  // Initialize the database service and authentication service
  final databaseService = DatabaseService();
  final authenticationService = AuthenticationService(databaseService);

  // Run the app with the provided services and state management
  runApp(MyApp(authenticationService: authenticationService));
}

class MyApp extends StatelessWidget {
  final AuthenticationService authenticationService;

  MyApp({required this.authenticationService});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provide the UserState for state management
        ChangeNotifierProvider(create: (_) => UserState()),
      ],
      child: MaterialApp(
        title: 'Personal Finance App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // Define the initial route and routes for navigation
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginScreen(authenticationService: authenticationService),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
