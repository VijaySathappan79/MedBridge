import 'package:flutter_test/flutter_test.dart';
import 'package:medbridge/main.dart';

void main() {
  testWidgets('MedBridge app dashboard smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MedBridgeApp());

    // Verify that the welcome greeting is found.
    expect(find.text('Welcome back,'), findsOneWidget);
    expect(find.text('Vijay Sathappan'), findsOneWidget);
  });
}
