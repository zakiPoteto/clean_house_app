import 'package:clean_house_app/features/task_detail/action.dart';
import 'package:clean_house_app/features/task_detail/store.dart';
import 'package:clean_house_app/features/task_form/screen.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/utils/app_date_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaskDetailScreen extends HookConsumerWidget {
  final Task task;

  const TaskDetailScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (:state, :dispatch) = useTaskDetailStore(ref, task);

    useEffect(() {
      if (state.deleted || state.completed) {
        Navigator.of(context).pop(true);
      }
      return null;
    }, [state.deleted, state.completed]);

    final t = state.task;
    final days = AppDateUtils.daysRemaining(t.lastCleanedDate, t.intervalDays);
    final status = AppDateUtils.statusFrom(days);
    final indicatorColor = AppDateUtils.indicatorColorFrom(status);
    final bgColor = AppDateUtils.backgroundColorFrom(status);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.name),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: '編集',
            onPressed: () async {
              final edited = await Navigator.of(context).push<bool>(
                MaterialPageRoute(
                  builder: (_) => TaskFormScreen(editingTask: t),
                ),
              );
              if (edited == true && context.mounted) {
                Navigator.of(context).pop(true);
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            tooltip: '削除',
            onPressed: () => _confirmDelete(context, dispatch),
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : _DetailBody(
              task: t,
              days: days,
              indicatorColor: indicatorColor,
              bgColor: bgColor,
              error: state.error,
              dispatch: dispatch,
            ),
    );
  }

  void _confirmDelete(
    BuildContext context,
    void Function(TaskDetailAction) dispatch,
  ) {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('タスクを削除'),
        content: Text('「${task.name}」を削除しますか？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('キャンセル'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              dispatch(const DeleteRequested());
            },
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('削除'),
          ),
        ],
      ),
    );
  }
}

class _DetailBody extends StatelessWidget {
  final Task task;
  final int days;
  final Color indicatorColor;
  final Color bgColor;
  final Object? error;
  final void Function(TaskDetailAction) dispatch;

  const _DetailBody({
    required this.task,
    required this.days,
    required this.indicatorColor,
    required this.bgColor,
    required this.error,
    required this.dispatch,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _StatusCard(
          task: task,
          days: days,
          indicatorColor: indicatorColor,
          bgColor: bgColor,
        ),
        const SizedBox(height: 24),
        _CompleteButton(dispatch: dispatch),
        const SizedBox(height: 24),
        _InfoSection(task: task),
        if (task.tags.isNotEmpty) ...[
          const SizedBox(height: 16),
          _TagsSection(tags: task.tags),
        ],
        if (error != null) ...[
          const SizedBox(height: 16),
          Text(
            '操作に失敗しました',
            style: TextStyle(color: Theme.of(context).colorScheme.error),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}

class _StatusCard extends StatelessWidget {
  final Task task;
  final int days;
  final Color indicatorColor;
  final Color bgColor;

  const _StatusCard({
    required this.task,
    required this.days,
    required this.indicatorColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: indicatorColor, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              AppDateUtils.daysRemainingLabel(days),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: indicatorColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '最終実施: ${AppDateUtils.formatDate(task.lastCleanedDate)}',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
          ],
        ),
      ),
    );
  }
}

class _CompleteButton extends StatelessWidget {
  final void Function(TaskDetailAction) dispatch;

  const _CompleteButton({required this.dispatch});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FilledButton.icon(
        onPressed: () => dispatch(CompleteRequested(AppDateUtils.today())),
        icon: const Icon(Icons.check_circle_outline),
        label: const Text('今日掃除した', style: TextStyle(fontSize: 18)),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class _InfoSection extends StatelessWidget {
  final Task task;

  const _InfoSection({required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            _InfoRow(
              label: '掃除の頻度',
              value: '${task.intervalDays}日ごと',
            ),
            const Divider(height: 16),
            _InfoRow(
              label: '所要時間',
              value: task.timeTaken != null ? '${task.timeTaken}分' : '未設定',
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(color: Colors.grey.shade600)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class _TagsSection extends StatelessWidget {
  final List<String> tags;

  const _TagsSection({required this.tags});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: tags
          .map((tag) => Chip(
                label: Text(tag),
                visualDensity: VisualDensity.compact,
              ))
          .toList(),
    );
  }
}
