import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState({
    required Task task,
    DateTime? pendingCompleteDate,
    @Default(false) bool pendingDelete,
    @Default(false) bool isLoading,
    @Default(false) bool completed,
    @Default(false) bool deleted,
    DomainError? error,
  }) = _TaskDetailState;
}
