import 'package:clean_house_app/features/task_detail/action.dart';
import 'package:clean_house_app/features/task_detail/effects.dart';
import 'package:clean_house_app/features/task_detail/reducer.dart';
import 'package:clean_house_app/features/task_detail/state.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/providers/repository_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef TaskDetailStore = ({
  TaskDetailState state,
  void Function(TaskDetailAction) dispatch,
});

TaskDetailStore useTaskDetailStore(WidgetRef ref, Task initialTask) {
  final repo = ref.watch(taskRepositoryProvider);

  final store = useReducer<TaskDetailState, TaskDetailAction>(
    reduce,
    initialState: TaskDetailState(task: initialTask),
    initialAction: const Noop(),
  );

  useTaskDetailEffects(store.state, store.dispatch, repo);

  return (state: store.state, dispatch: store.dispatch);
}
