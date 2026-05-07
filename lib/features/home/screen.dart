import 'package:clean_house_app/features/home/action.dart';
import 'package:clean_house_app/features/home/state.dart';
import 'package:clean_house_app/features/home/store.dart';
import 'package:clean_house_app/features/csv_management/screen.dart';
import 'package:clean_house_app/features/task_detail/screen.dart';
import 'package:clean_house_app/features/task_form/screen.dart';
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
            onPressed: () async {
              await Navigator.of(context).push<void>(
                MaterialPageRoute(
                  builder: (_) => const CsvManagementScreen(),
                ),
              );
              dispatch(const TasksLoadRequested());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _FilterBar(state: state, allTags: allTags, dispatch: dispatch),
          const Divider(height: 1),
          Expanded(
            child: _Body(
              state: state,
              filteredTasks: filteredTasks,
              dispatch: dispatch,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final added = await Navigator.of(context).push<bool>(
            MaterialPageRoute(builder: (_) => const TaskFormScreen()),
          );
          if (added == true) dispatch(const TasksLoadRequested());
        },
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
          _Chip(
            label: 'すべて',
            selected: state.filterStatus == null,
            onSelected: (_) => dispatch(const FilterStatusChanged(null)),
          ),
          const SizedBox(width: 8),
          _Chip(
            label: '期限切れ',
            selected: state.filterStatus == TaskStatus.overdue,
            onSelected: (_) => dispatch(const FilterStatusChanged(TaskStatus.overdue)),
          ),
          const SizedBox(width: 8),
          _Chip(
            label: 'もうすぐ',
            selected: state.filterStatus == TaskStatus.soon,
            onSelected: (_) => dispatch(const FilterStatusChanged(TaskStatus.soon)),
          ),
          if (allTags.isNotEmpty) ...[
            const SizedBox(width: 16),
            const VerticalDivider(width: 1, indent: 4, endIndent: 4),
            const SizedBox(width: 16),
            ...allTags.map((tag) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: _Chip(
                    label: tag,
                    selected: state.filterTag == tag,
                    onSelected: (_) => dispatch(
                      FilterTagChanged(state.filterTag == tag ? null : tag),
                    ),
                  ),
                )),
          ],
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const _Chip({
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
              onPressed: () => dispatch(const TasksLoadRequested()),
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
      separatorBuilder: (context, _) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final task = filteredTasks[index];
        return TaskListItem(
          task: task,
          onComplete: () => dispatch(TaskCompleteRequested(
            task.id,
            AppDateUtils.today(),
          )),
          onTap: () async {
            final changed = await Navigator.of(context).push<bool>(
              MaterialPageRoute(
                builder: (_) => TaskDetailScreen(task: task),
              ),
            );
            if (changed == true) dispatch(const TasksLoadRequested());
          },
        );
      },
    );
  }
}
