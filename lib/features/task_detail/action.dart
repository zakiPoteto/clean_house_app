import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';

sealed class TaskDetailAction {
  const TaskDetailAction();
}

// --- 意図アクション（Intent） ---

final class CompleteRequested extends TaskDetailAction {
  const CompleteRequested(this.now);
  final DateTime now;
}

final class DeleteRequested extends TaskDetailAction {
  const DeleteRequested();
}

// --- 結果アクション（Result） ---

final class Completed extends TaskDetailAction {
  const Completed(this.task);
  final Task task;
}

final class Deleted extends TaskDetailAction {
  const Deleted();
}

final class OperationFailed extends TaskDetailAction {
  const OperationFailed(this.error);
  final DomainError error;
}
