import 'package:clean_house_app/features/task_detail/action.dart';
import 'package:clean_house_app/features/task_detail/state.dart';

TaskDetailState reduce(TaskDetailState state, TaskDetailAction action) {
  return switch (action) {
    CompleteRequested(:final now) => state.copyWith(
        pendingCompleteDate: now,
        isLoading: true,
        error: null,
      ),
    DeleteRequested() => state.copyWith(
        pendingDelete: true,
        isLoading: true,
        error: null,
      ),
    Completed(:final task) => state.copyWith(
        task: task,
        pendingCompleteDate: null,
        isLoading: false,
        completed: true,
      ),
    Deleted() => state.copyWith(
        pendingDelete: false,
        isLoading: false,
        deleted: true,
      ),
    OperationFailed(:final error) => state.copyWith(
        pendingCompleteDate: null,
        pendingDelete: false,
        isLoading: false,
        error: error,
      ),
  };
}
