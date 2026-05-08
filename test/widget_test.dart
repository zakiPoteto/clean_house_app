import 'package:clean_house_app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('アプリが起動してホーム画面のタイトルが表示される', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('掃除タスク'), findsOneWidget);
  });
}
