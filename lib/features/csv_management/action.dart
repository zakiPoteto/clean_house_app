import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';

sealed class CsvAction {
  const CsvAction();
}

final class CsvNoop extends CsvAction {
  const CsvNoop();
}

// --- 意図アクション（Intent） ---

final class ExportRequested extends CsvAction {
  const ExportRequested();
}

final class ImportRequested extends CsvAction {
  const ImportRequested();
}

final class ImportTextChanged extends CsvAction {
  const ImportTextChanged(this.text);
  final String text;
}

// --- 結果アクション（Result） ---

final class ExportSucceeded extends CsvAction {
  const ExportSucceeded(this.csvContent, this.filePath);
  final String csvContent;
  final String filePath;
}

final class ImportSucceeded extends CsvAction {
  const ImportSucceeded(this.tasks);
  final List<Task> tasks;
}

final class OperationFailed extends CsvAction {
  const OperationFailed(this.error);
  final DomainError error;
}
