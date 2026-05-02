import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/utils/app_date_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'action.freezed.dart';

@freezed
sealed class HomeAction with _$HomeAction {
  const factory HomeAction.tasksLoadRequested() = TasksLoadRequested;
  const factory HomeAction.tasksLoaded(List<Task> tasks) = TasksLoaded;
  const factory HomeAction.tasksLoadFailed(DomainError error) = TasksLoadFailed;
  const factory HomeAction.taskCompleteRequested(
    String taskId,
    DateTime now,
  ) = TaskCompleteRequested;
  const factory HomeAction.taskCompleted(Task task) = TaskCompleted;
  const factory HomeAction.taskCompleteFailed(DomainError error) = TaskCompleteFailed;
  const factory HomeAction.filterStatusChanged(TaskStatus? status) = FilterStatusChanged;
  const factory HomeAction.filterTagChanged(String? tag) = FilterTagChanged;
}
