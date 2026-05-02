import 'package:clean_house_app/features/home/action.dart';
import 'package:clean_house_app/features/home/effects.dart';
import 'package:clean_house_app/features/home/reducer.dart';
import 'package:clean_house_app/features/home/state.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/providers/repository_provider.dart';
import 'package:clean_house_app/utils/app_date_utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef HomeStore = ({
  HomeState state,
  List<Task> filteredTasks,
  List<String> allTags,
  void Function(HomeAction) dispatch,
});

HomeStore useHomeStore(WidgetRef ref) {
  final repo = ref.watch(taskRepositoryProvider);
  final store = useReducer<HomeState, HomeAction>(
    reduce,
    initialState: const HomeState(isLoading: false),
    initialAction: const TasksLoadRequested(),
  );

  useHomeEffects(store.state, store.dispatch, repo);

  return (
    state: store.state,
    filteredTasks: _filteredTasks(store.state),
    allTags: _allTags(store.state),
    dispatch: store.dispatch,
  );
}

List<Task> _filteredTasks(HomeState state) {
  var tasks = state.tasks;

  if (state.filterTag != null) {
    tasks = tasks.where((t) => t.tags.contains(state.filterTag)).toList();
  }

  if (state.filterStatus != null) {
    tasks = tasks.where((t) {
      final days = AppDateUtils.daysRemaining(t.lastCleanedDate, t.intervalDays);
      return AppDateUtils.statusFrom(days) == state.filterStatus;
    }).toList();
  }

  return tasks..sort((a, b) {
    final daysA = AppDateUtils.daysRemaining(a.lastCleanedDate, a.intervalDays);
    final daysB = AppDateUtils.daysRemaining(b.lastCleanedDate, b.intervalDays);
    return daysA.compareTo(daysB);
  });
}

List<String> _allTags(HomeState state) {
  final tags = <String>{};
  for (final task in state.tasks) {
    tags.addAll(task.tags);
  }
  return tags.toList()..sort();
}
