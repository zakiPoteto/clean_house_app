import 'package:clean_house_app/features/task_form/action.dart';
import 'package:clean_house_app/features/task_form/effects.dart';
import 'package:clean_house_app/features/task_form/reducer.dart';
import 'package:clean_house_app/features/task_form/state.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/providers/repository_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef TaskFormStore = ({
  TaskFormState state,
  void Function(TaskFormAction) dispatch,
});

TaskFormStore useTaskFormStore(WidgetRef ref, {Task? editingTask}) {
  final repo = ref.watch(taskRepositoryProvider);

  final initialState = TaskFormState(
    name: editingTask?.name ?? '',
    intervalDays: editingTask?.intervalDays ?? 7,
    tags: editingTask?.tags ?? [],
    timeTaken: editingTask?.timeTaken,
    editingTask: editingTask,
  );

  final store = useReducer<TaskFormState, TaskFormAction>(
    reduce,
    initialState: initialState,
    initialAction: const TaskFormNoop(),
  );

  useTaskFormEffects(store.state, store.dispatch, repo);

  return (state: store.state, dispatch: store.dispatch);
}
