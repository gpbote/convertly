import 'package:flutter_test/flutter_test.dart';
import 'package:convertly/app/app.dart';

void main() {
  testWidgets('Convertly app loads', (tester) async {
    await tester.pumpWidget(const ConvertlyApp());
    expect(find.text('Convertly'), findsOneWidget);
  });
}
