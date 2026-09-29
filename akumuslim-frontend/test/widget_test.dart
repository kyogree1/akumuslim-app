import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  testWidgets('Counter initial value test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Memastikan UI beranda berhasil di-render
    expect(find.text('Mari awali hari dengan'), findsOneWidget);
  });
}