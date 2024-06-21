import 'dart:io';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('App Screenshots', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('Take screenshots of app screens', () async {
      await driver.waitFor(find.byType('HomeScreen'));
      await driver.screenshot(new File('screenshots/home_screen.png').absolute.path);

      await driver.tap(find.byTooltip('Login'));
      await driver.waitFor(find.byType('LoginScreen'));
      await driver.screenshot(new File('screenshots/login_screen.png').absolute.path);

      await driver.tap(find.byTooltip('Goals'));
      await driver.waitFor(find.byType('GoalScreen'));
      await driver.screenshot(new File('screenshots/goal_screen.png').absolute.path);

      await driver.tap(find.byTooltip('Transaction'));
      await driver.waitFor(find.byType('TransactionScreen'));
      await driver.screenshot(new File('screenshots/transaction_screen.png').absolute.path);
    });
  });
}
