import 'package:clean_house_app/features/home/action.dart';
import 'package:clean_house_app/features/home/state.dart';

HomeState reduce(HomeState state, HomeAction action) {
  return switch (action) {
    TasksLoadRequested() => state.copyWith(
        isLoading: true,
        error: null,
        completeError: null,
        loadCounter: state.loadCounter + 1,
      ),
    TasksLoaded(:final tasks) => state.copyWith(
        isLoading: false,
        tasks: tasks,
        error: null,
      ),
    TasksLoadFailed(:final error) => state.copyWith(
        isLoading: false,
        error: error,
      ),
    TaskCompleteRequested(:final taskId, :final now) => state.copyWith(
        pendingCompleteTaskId: taskId,
        pendingCompleteDate: now,
        completeError: null,
      ),
    TaskCompleted(:final task) => state.copyWith(
        pendingCompleteTaskId: null,
        pendingCompleteDate: null,
        completeError: null,
        tasks: state.tasks.map((t) => t.id == task.id ? task : t).toList(),
      ),
    TaskCompleteFailed(:final error) => state.copyWith(
        pendingCompleteTaskId: null,
        pendingCompleteDate: null,
        completeError: error,
      ),
    FilterStatusChanged(:final status) => state.copyWith(filterStatus: status),
    FilterTagChanged(:final tag) => state.copyWith(filterTag: tag),
  };
}
