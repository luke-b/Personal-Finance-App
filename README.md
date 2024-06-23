# Personal Finance App

[![Flutter CI](https://github.com/luke-b/Personal-Finance-App/actions/workflows/flutter-build-test.yml/badge.svg?branch=main)](https://github.com/luke-b/Personal-Finance-App/actions/workflows/flutter-build-test.yml)

Welcome to the Personal Finance App repository! This Flutter application helps you manage your personal finances by tracking transactions, setting budgets, and achieving financial goals.

> [!NOTE]
> The entire code base has been crafted by the DeepSeek-Coder AI model, tailored to the specifications detailed below.

## Features

- **User Authentication**: Secure login and registration functionality.
- **Transaction Management**: View, add, and manage your financial transactions.
- **Budget Tracking**: Set and monitor budget categories.
- **Financial Goals**: Define and track your financial goals with deadlines.
- **Charts and Analytics**: Visualize your financial data with charts for better insights.

## Screenshots

![Home Screen Screenshot](https://github.com/luke-b/Personal-Finance-App/blob/main/screenshot.jpeg?raw=true)

## UI Design

![Home Screen Screenshot](https://github.com/luke-b/Personal-Finance-App/blob/main/ui-design1.png?raw=true)


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

5. **Default login:**
   ```sh
   email: default@example.com
   password: password
   ```
   

## Dependencies

- [Flutter](https://flutter.dev/)
- [sqflite](https://pub.dev/packages/sqflite)
- [charts_flutter_new](https://pub.dev/packages/charts_flutter_new)

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

---

Entity-Relationship (ER) analysis:

### Entities:
1. **User**
   - Attributes: UserID, Name, Email, Password, Age

2. **Account**
   - Attributes: AccountID, UserID, AccountName, Balance

3. **Transaction**
   - Attributes: TransactionID, AccountID, Date, Amount, Category, Description

4. **Budget**
   - Attributes: BudgetID, UserID, Category, Amount, Period

5. **FinancialGoal**
   - Attributes: GoalID, UserID, GoalName, TargetAmount, CurrentAmount, Deadline

### Relationships:
1. **User-Account**
   - One user can have multiple accounts (1:N)

2. **Account-Transaction**
   - One account can have multiple transactions (1:N)

3. **User-Budget**
   - One user can set multiple budgets (1:N)

4. **User-FinancialGoal**
   - One user can set multiple financial goals (1:N)

### ER Diagram Representation:
- **User**
  - UserID (PK)
  - Name
  - Email
  - Password
  - Age

- **Account**
  - AccountID (PK)
  - UserID (FK)
  - AccountName
  - Balance

- **Transaction**
  - TransactionID (PK)
  - AccountID (FK)
  - Date
  - Amount
  - Category
  - Description

- **Budget**
  - BudgetID (PK)
  - UserID (FK)
  - Category
  - Amount
  - Period

- **FinancialGoal**
  - GoalID (PK)
  - UserID (FK)
  - GoalName
  - TargetAmount
  - CurrentAmount
  - Deadline

### Relationships:
- **User 1:N Account**
- **Account 1:N Transaction**
- **User 1:N Budget**
- **User 1:N FinancialGoal**

---

The scope for the personal finance management app:

### 1. User Authentication
- **Third-party authentication services**: No, stick to email/password registration and login for simplicity.
- **Registration and login forms**: Basic email/password forms are sufficient.
- **Security measures**: Standard password hashing and salting for security.

### 2. Data Storage and Management
- **Database technology**: Use local storage with the option to export data to CSV for backup.
- **Data synchronization**: Not required as local storage is sufficient.
- **Data encryption and privacy**: Basic encryption for local storage to protect user data.

### 3. User Interface Design
- **UI designs or themes**: Minimalist design with a sleek, intuitive interface.
- **Visual elements**: Simple, clean icons and a neutral color scheme.
- **Navigation**: Use a bottom navigation bar for easy access to key sections.

### 4. Transaction Management
- **Transaction types**: Focus on income and expenses.
- **Transaction categories**: Include essential categories like groceries, utilities, entertainment.
- **Recurring transactions**: Not a priority; can be considered in future updates.

### 5. Budget and Goal Setting
- **Budget types**: Support monthly budgets initially.
- **Budget alerts**: Set basic notifications for budget thresholds.
- **Goal tracking**: Use simple progress bars to show goal progress.

### 6. Charts and Analytics
- **Chart types**: Include basic bar charts for income vs. expenses.
- **Chart data**: Focus on monthly income and spending comparisons.
- **Interactive elements**: Basic chart functionality without advanced interactions.

### 7. Feedback and Support
- **Feedback submission**: Provide an in-app feedback form.
- **Help section**: Include a basic FAQ section within the app.
- **User support**: No dedicated support; rely on feedback form for user inquiries.

### 8. Export and Backup
- **Export data**: Allow users to export transactions to CSV.
- **Cloud backup**: Not initially; consider in future updates.
- **Data import**: Not initially; consider in future updates.

### 9. Monetization and Pricing
- **Monetization strategy**: Free with no ads; consider premium features in future updates.
- **Premium features**: Not initially; consider advanced features in future updates.
- **In-app purchases**: Not initially; consider in future updates.

### 10. Testing and Deployment
- **Testing types**: Conduct basic unit testing and manual user testing.
- **Testing frameworks**: Use Flutter's built-in testing frameworks for unit testing.
- **Deployment**: Plan to deploy the app on Google Play initially.





