import 'package:clean_house_app/features/task_form/action.dart';
import 'package:clean_house_app/features/task_form/state.dart';
import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/repositories/task_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

void useTaskFormEffects(
  TaskFormState state,
  void Function(TaskFormAction) dispatch,
  TaskRepository repo,
) {
  useEffect(() {
    if (!state.isSaving) return null;

    var cancelled = false;
    final task = _buildTask(state);

    repo.save(task).then((_) {
      if (!cancelled) dispatch(const SaveSucceeded());
    }).catchError((Object e) {
      if (!cancelled) {
        dispatch(TaskSaveFailed(
          e is DomainError ? e : DomainError.saveFailed(e.toString()),
        ));
      }
    });

    return () {
      cancelled = true;
    };
  }, [state.isSaving]);
}

Task _buildTask(TaskFormState state) {
  final editing = state.editingTask;
  if (editing != null) {
    return editing.copyWith(
      name: state.name.trim(),
      intervalDays: state.intervalDays,
      tags: state.tags,
      timeTaken: state.timeTaken,
    );
  }
  return Task(
    id: const Uuid().v4(),
    name: state.name.trim(),
    intervalDays: state.intervalDays,
    tags: state.tags,
    timeTaken: state.timeTaken,
  );
}
