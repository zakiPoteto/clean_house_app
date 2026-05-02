import 'package:clean_house_app/features/home/action.dart';
import 'package:clean_house_app/features/home/state.dart';
import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/repositories/task_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useHomeEffects(
  HomeState state,
  void Function(HomeAction) dispatch,
  TaskRepository repo,
) {
  useEffect(() {
    var cancelled = false;
    repo.fetchAll().then((tasks) {
      if (!cancelled) dispatch(TasksLoaded(tasks));
    }).catchError((Object e) {
      if (!cancelled) {
        dispatch(TasksLoadFailed(
          e is DomainError ? e : DomainError.csvParseFailed(e.toString()),
        ));
      }
    });
    return () {
      cancelled = true;
    };
  }, [state.loadCounter]);

  useEffect(() {
    final taskId = state.pendingCompleteTaskId;
    final date = state.pendingCompleteDate;
    if (taskId == null || date == null) return null;

    final matches = state.tasks.where((t) => t.id == taskId).toList();
    if (matches.isEmpty) return null;

    final updated = matches.first.copyWith(lastCleanedDate: date);
    var cancelled = false;
    repo.save(updated).then((_) {
      if (!cancelled) dispatch(TaskCompleted(updated));
    }).catchError((Object e) {
      if (!cancelled) {
        dispatch(TaskCompleteFailed(
          e is DomainError ? e : DomainError.saveFailed(e.toString()),
        ));
      }
    });
    return () {
      cancelled = true;
    };
  }, [state.pendingCompleteTaskId, state.pendingCompleteDate]);
}
