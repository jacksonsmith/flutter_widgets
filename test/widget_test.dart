import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widgets/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the setup complete message is shown.
    expect(find.text('Flutter Widgets App - Setup Complete!'), findsOneWidget);
  });
}
