import 'package:clean_house_app/features/task_form/action.dart';
import 'package:clean_house_app/features/task_form/state.dart';

TaskFormState reduce(TaskFormState state, TaskFormAction action) {
  return switch (action) {
    NameChanged(:final name) => state.copyWith(name: name, error: null),
    IntervalChanged(:final days) => state.copyWith(intervalDays: days),
    TagsChanged(:final tags) => state.copyWith(tags: tags),
    TemplateSelected(:final name, :final intervalDays, :final tags) =>
      state.copyWith(name: name, intervalDays: intervalDays, tags: tags),
    SaveRequested() => state.copyWith(isSaving: true, error: null),
    SaveSucceeded() => state.copyWith(isSaving: false, saved: true),
    TaskSaveFailed(:final error) => state.copyWith(isSaving: false, error: error),
  };
}
