import 'package:clean_house_app/models/task.dart';

abstract interface class TaskRepository {
  Future<List<Task>> fetchAll();
  Future<void> save(Task task);
  Future<void> delete(String id);
  Future<void> saveAll(List<Task> tasks);
  Future<String> exportCsv();
  Future<({String csvContent, String filePath})> exportToFile();
  Future<List<Task>> importCsv(String csvContent);
}
