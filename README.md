# Personal Finance App

Welcome to the Personal Finance App repository! This Flutter application helps you manage your personal finances by tracking transactions, setting budgets, and achieving financial goals.

## Features

- **User Authentication**: Secure login and registration functionality.
- **Transaction Management**: View, add, and manage your financial transactions.
- **Budget Tracking**: Set and monitor budget categories.
- **Financial Goals**: Define and track your financial goals with deadlines.
- **Charts and Analytics**: Visualize your financial data with charts for better insights.

## Screenshots



## Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/luke-b/personal-finance-app.git
   ```

2. **Navigate to the project directory:**
   ```sh
   cd personal-finance-app
   ```

3. **Install dependencies:**
   ```sh
   flutter pub get
   ```

4. **Run the app:**
   ```sh
   flutter run
   ```

## Dependencies

- [Flutter](https://flutter.dev/)
- [sqflite](https://pub.dev/packages/sqflite)
- [charts_flutter](https://pub.dev/packages/charts_flutter)

## Contributing

Contributions are welcome! Please read the [contributing guidelines](CONTRIBUTING.md) to get started.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or suggestions, feel free to open an issue or contact us directly.

---

Thank you for checking out the Personal Finance App! We hope you find it useful and welcome any feedback or contributions.

---

Project structure for the Personal Finance App:

```
personal_finance_app/
├── lib/
│   ├── main.dart
│   ├── models/
│   │   ├── user.dart
│   │   ├── transaction.dart
│   │   ├── budget.dart
│   │   └── financial_goal.dart
│   ├── screens/
│   │   ├── login_screen.dart
│   │   ├── home_screen.dart
│   │   ├── transaction_screen.dart
│   │   ├── budget_screen.dart
│   │   └── goal_screen.dart
│   ├── services/
│   │   ├── authentication_service.dart
│   │   ├── database_service.dart
│   │   └── chart_service.dart
│   ├── widgets/
│   │   ├── transaction_list.dart
│   │   ├── budget_chart.dart
│   │   └── goal_progress.dart
│   ├── utils/
│   │   ├── constants.dart
│   │   └── helpers.dart
│   └── state/
│       └── user_state.dart
├── test/
│   ├── models/
│   │   ├── user_test.dart
│   │   └── transaction_test.dart
│   ├── services/
│   │   └── authentication_service_test.dart
│   └── widgets/
│       └── transaction_list_test.dart
├── pubspec.yaml
└── README.md
```

### Detailed File Descriptions

#### `lib/main.dart`
The entry point of the application. Configures the app's theme and routes.

#### `lib/models/`
Contains data models for the application:
- `user.dart`: Defines the `User` model.
- `transaction.dart`: Defines the `Transaction` model.
- `budget.dart`: Defines the `Budget` model.
- `financial_goal.dart`: Defines the `FinancialGoal` model.

#### `lib/screens/`
Contains the main screens of the application:
- `login_screen.dart`: Handles user login.
- `home_screen.dart`: The main dashboard screen.
- `transaction_screen.dart`: Displays the user's transactions.
- `budget_screen.dart`: Displays the user's budgets.
- `goal_screen.dart`: Displays the user's financial goals.

#### `lib/services/`
Contains services for handling business logic:
- `authentication_service.dart`: Handles user authentication.
- `database_service.dart`: Manages database interactions.
- `chart_service.dart`: Provides chart generation functionality.

#### `lib/widgets/`
Contains reusable widgets:
- `transaction_list.dart`: Displays a list of transactions.
- `budget_chart.dart`: Displays a chart of budgets.
- `goal_progress.dart`: Displays the progress of a financial goal.

#### `lib/utils/`
Contains utility files:
- `constants.dart`: Defines constants used throughout the app.
- `helpers.dart`: Contains helper functions for common tasks.

#### `lib/state/`
Contains state management files:
- `user_state.dart`: Manages the state of the logged-in user.

#### `test/`
Contains test files for models, services, and widgets:
- `models/`: Tests for data models.
- `services/`: Tests for services.
- `widgets/`: Tests for widgets.

#### `pubspec.yaml`
Contains dependencies and metadata for the project.
