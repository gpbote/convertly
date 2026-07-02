import 'package:flutter_test/flutter_test.dart';
import 'package:convertly/main.dart';

void main() {
  testWidgets('App starts', (tester) async {
    await tester.pumpWidget(const ConvertlyApp());
    expect(find.text('Convertly'), findsOneWidget);
  });
}
