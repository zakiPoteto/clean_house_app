import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/utils/app_date_utils.dart';

sealed class HomeAction {
  const HomeAction();
}

// --- 意図アクション（Intent） ---

final class TasksLoadRequested extends HomeAction {
  const TasksLoadRequested();
}

final class TaskCompleteRequested extends HomeAction {
  const TaskCompleteRequested(this.taskId, this.now);
  final String taskId;
  final DateTime now;
}

final class FilterStatusChanged extends HomeAction {
  const FilterStatusChanged(this.status);
  final TaskStatus? status;
}

final class FilterTagChanged extends HomeAction {
  const FilterTagChanged(this.tag);
  final String? tag;
}

// --- 結果アクション（Result） ---

final class TasksLoaded extends HomeAction {
  const TasksLoaded(this.tasks);
  final List<Task> tasks;
}

final class TasksLoadFailed extends HomeAction {
  const TasksLoadFailed(this.error);
  final DomainError error;
}

final class TaskCompleted extends HomeAction {
  const TaskCompleted(this.task);
  final Task task;
}

final class TaskCompleteFailed extends HomeAction {
  const TaskCompleteFailed(this.error);
  final DomainError error;
}
