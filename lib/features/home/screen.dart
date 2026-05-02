import 'package:clean_house_app/features/home/action.dart';
import 'package:clean_house_app/features/home/state.dart';
import 'package:clean_house_app/features/home/store.dart';
import 'package:clean_house_app/utils/app_date_utils.dart';
import 'package:clean_house_app/widgets/task_list_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (:state, :filteredTasks, :allTags, :dispatch) = useHomeStore(ref);

    return Scaffold(
      appBar: AppBar(
        title: const Text('掃除タスク'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.import_export),
            tooltip: 'CSV管理',
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          _FilterBar(state: state, allTags: allTags, dispatch: dispatch),
          const Divider(height: 1),
          Expanded(child: _Body(state: state, filteredTasks: filteredTasks, dispatch: dispatch)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'タスクを追加',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _FilterBar extends StatelessWidget {
  final HomeState state;
  final List<String> allTags;
  final void Function(HomeAction) dispatch;

  const _FilterBar({
    required this.state,
    required this.allTags,
    required this.dispatch,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          _StatusChip(
            label: 'すべて',
            selected: state.filterStatus == null,
            onSelected: (_) => dispatch(const HomeAction.filterStatusChanged(null)),
          ),
          const SizedBox(width: 8),
          _StatusChip(
            label: '期限切れ',
            selected: state.filterStatus == TaskStatus.overdue,
            onSelected: (_) =>
                dispatch(const HomeAction.filterStatusChanged(TaskStatus.overdue)),
          ),
          const SizedBox(width: 8),
          _StatusChip(
            label: 'もうすぐ',
            selected: state.filterStatus == TaskStatus.soon,
            onSelected: (_) =>
                dispatch(const HomeAction.filterStatusChanged(TaskStatus.soon)),
          ),
          if (allTags.isNotEmpty) ...[
            const SizedBox(width: 16),
            const VerticalDivider(width: 1, indent: 4, endIndent: 4),
            const SizedBox(width: 16),
            ...allTags.map((tag) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: _StatusChip(
                    label: tag,
                    selected: state.filterTag == tag,
                    onSelected: (_) => dispatch(
                      HomeAction.filterTagChanged(
                        state.filterTag == tag ? null : tag,
                      ),
                    ),
                  ),
                )),
          ],
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const _StatusChip({
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
      showCheckmark: false,
      visualDensity: VisualDensity.compact,
    );
  }
}

class _Body extends StatelessWidget {
  final HomeState state;
  final List filteredTasks;
  final void Function(HomeAction) dispatch;

  const _Body({
    required this.state,
    required this.filteredTasks,
    required this.dispatch,
  });

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 8),
            const Text('データの読み込みに失敗しました'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => dispatch(const HomeAction.tasksLoadRequested()),
              child: const Text('再読み込み'),
            ),
          ],
        ),
      );
    }

    if (filteredTasks.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.cleaning_services, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text(
              'タスクがありません',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '＋ボタンからタスクを追加しましょう',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: filteredTasks.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final task = filteredTasks[index];
        return TaskListItem(
          task: task,
          onComplete: () => dispatch(HomeAction.taskCompleteRequested(
            task.id,
            AppDateUtils.today(),
          )),
          onTap: () {},
        );
      },
    );
  }
}
