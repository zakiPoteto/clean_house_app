import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class TaskFormState with _$TaskFormState {
  const factory TaskFormState({
    @Default('') String name,
    @Default(7) int intervalDays,
    @Default([]) List<String> tags,
    int? timeTaken,
    Task? editingTask,
    @Default(false) bool isSaving,
    @Default(false) bool saved,
    DomainError? error,
  }) = _TaskFormState;

  const TaskFormState._();

  bool get isValid => name.trim().isNotEmpty && intervalDays > 0;

  bool get isEditing => editingTask != null;
}
