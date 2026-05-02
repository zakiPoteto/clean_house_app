import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';

sealed class TaskFormAction {
  const TaskFormAction();
}

// --- 意図アクション（Intent） ---

final class NameChanged extends TaskFormAction {
  const NameChanged(this.name);
  final String name;
}

final class IntervalChanged extends TaskFormAction {
  const IntervalChanged(this.days);
  final int days;
}

final class TagsChanged extends TaskFormAction {
  const TagsChanged(this.tags);
  final List<String> tags;
}

final class TemplateSelected extends TaskFormAction {
  const TemplateSelected(this.name, this.intervalDays, this.tags);
  final String name;
  final int intervalDays;
  final List<String> tags;
}

final class SaveRequested extends TaskFormAction {
  const SaveRequested();
}

// --- 結果アクション（Result） ---

final class SaveSucceeded extends TaskFormAction {
  const SaveSucceeded(this.task);
  final Task task;
}

final class TaskSaveFailed extends TaskFormAction {
  const TaskSaveFailed(this.error);
  final DomainError error;
}
