import 'package:clean_house_app/main.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/providers/repository_provider.dart';
import 'package:clean_house_app/repositories/task_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class _FakeRepository implements TaskRepository {
  @override
  Future<List<Task>> fetchAll() async => [];

  @override
  Future<void> save(Task task) async {}

  @override
  Future<void> delete(String id) async {}

  @override
  Future<void> saveAll(List<Task> tasks) async {}

  @override
  Future<String> exportCsv() async => '';

  @override
  Future<({String csvContent, String filePath})> exportToFile() async =>
      (csvContent: '', filePath: '');

  @override
  Future<List<Task>> importCsv(String csvContent) async => [];
}

void main() {
  testWidgets('アプリが起動してホーム画面のタイトルが表示される', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          taskRepositoryProvider.overrideWithValue(_FakeRepository()),
        ],
        child: const MyApp(),
      ),
    );

    expect(find.text('掃除タスク'), findsOneWidget);
  });
}
