import 'package:clean_house_app/repositories/csv_task_repository.dart';
import 'package:clean_house_app/repositories/task_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  return CsvTaskRepository();
});
