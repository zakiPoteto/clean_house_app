import 'package:clean_house_app/features/task_detail/action.dart';
import 'package:clean_house_app/features/task_detail/state.dart';
import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/repositories/task_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useTaskDetailEffects(
  TaskDetailState state,
  void Function(TaskDetailAction) dispatch,
  TaskRepository repo,
) {
  useEffect(() {
    final date = state.pendingCompleteDate;
    if (date == null) return null;

    final updated = state.task.copyWith(lastCleanedDate: date);
    var cancelled = false;
    repo.save(updated).then((_) {
      if (!cancelled) dispatch(Completed(updated));
    }).catchError((Object e) {
      if (!cancelled) {
        dispatch(OperationFailed(
          e is DomainError ? e : DomainError.saveFailed(e.toString()),
        ));
      }
    });
    return () { cancelled = true; };
  }, [state.pendingCompleteDate]);

  useEffect(() {
    if (!state.pendingDelete) return null;

    var cancelled = false;
    repo.delete(state.task.id).then((_) {
      if (!cancelled) dispatch(const Deleted());
    }).catchError((Object e) {
      if (!cancelled) {
        dispatch(OperationFailed(
          e is DomainError ? e : DomainError.saveFailed(e.toString()),
        ));
      }
    });
    return () { cancelled = true; };
  }, [state.pendingDelete]);
}
