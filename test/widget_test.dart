import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widgets/core/constants/app_strings.dart';
import 'package:flutter_widgets/core/di/injection.dart';
import 'package:flutter_widgets/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUpAll(() async {
    // Mock SharedPreferences for testing
    SharedPreferences.setMockInitialValues({});

    // Initialize GetIt before running tests
    await configureDependencies();
  });

  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verify that the app name is shown in the AppBar
    expect(find.text(AppStrings.appName), findsOneWidget);
  });
}
