import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/providers/repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final taskListProvider = FutureProvider<List<Task>>((ref) async {
  final repo = ref.watch(taskRepositoryProvider);
  return repo.fetchAll();
});
