import 'package:clean_house_app/features/task_form/action.dart';
import 'package:clean_house_app/features/task_form/state.dart';
import 'package:clean_house_app/features/task_form/store.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaskFormScreen extends HookConsumerWidget {
  final Task? editingTask;

  const TaskFormScreen({super.key, this.editingTask});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (:state, :dispatch) = useTaskFormStore(ref, editingTask: editingTask);

    final nameController = useTextEditingController(text: state.name);

    useEffect(() {
      if (nameController.text != state.name) {
        nameController.value = nameController.value.copyWith(
          text: state.name,
          selection: TextSelection.collapsed(offset: state.name.length),
        );
      }
      return null;
    }, [state.name]);

    useEffect(() {
      if (state.saved) Navigator.of(context).pop(true);
      return null;
    }, [state.saved]);

    return Scaffold(
      appBar: AppBar(
        title: Text(state.isEditing ? 'タスクを編集' : 'タスクを追加'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          TextButton(
            onPressed: state.isValid && !state.isSaving
                ? () => dispatch(const SaveRequested())
                : null,
            child: const Text('保存'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _SectionLabel('場所名'),
          const SizedBox(height: 8),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: '例：キッチン、風呂',
              border: OutlineInputBorder(),
            ),
            onChanged: (v) => dispatch(NameChanged(v)),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 24),
          _SectionLabel('掃除の頻度（日）'),
          const SizedBox(height: 8),
          _IntervalSelector(state: state, dispatch: dispatch),
          const SizedBox(height: 24),
          _SectionLabel('タグ（複数選択可）'),
          const SizedBox(height: 8),
          _TagSelector(state: state, dispatch: dispatch),
          const SizedBox(height: 24),
          _SectionLabel('所要時間（分）'),
          const SizedBox(height: 8),
          _TimeTakenSelector(state: state, dispatch: dispatch),
          const SizedBox(height: 32),
          if (!state.isEditing) ...[
            _SectionLabel('テンプレートから選ぶ'),
            const SizedBox(height: 8),
            _TemplateList(dispatch: dispatch),
          ],
          if (state.error != null) ...[
            const SizedBox(height: 16),
            Text(
              '保存に失敗しました',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}

class _IntervalSelector extends StatelessWidget {
  final TaskFormState state;
  final void Function(TaskFormAction) dispatch;

  const _IntervalSelector({required this.state, required this.dispatch});

  static const _options = [1, 3, 7, 14, 30];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: _options.map((days) {
        final label = days == 1 ? '毎日' : '$days日ごと';
        return ChoiceChip(
          label: Text(label),
          selected: state.intervalDays == days,
          onSelected: (_) => dispatch(IntervalChanged(days)),
        );
      }).toList(),
    );
  }
}

class _TagSelector extends StatelessWidget {
  final TaskFormState state;
  final void Function(TaskFormAction) dispatch;

  const _TagSelector({required this.state, required this.dispatch});

  static const _allTags = ['水回り', 'リビング', 'キッチン', '床', 'その他'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: _allTags.map((tag) {
        final selected = state.tags.contains(tag);
        return FilterChip(
          label: Text(tag),
          selected: selected,
          onSelected: (_) {
            final next = selected
                ? state.tags.where((t) => t != tag).toList()
                : [...state.tags, tag];
            dispatch(TagsChanged(next));
          },
        );
      }).toList(),
    );
  }
}

class _TimeTakenSelector extends StatelessWidget {
  final TaskFormState state;
  final void Function(TaskFormAction) dispatch;

  const _TimeTakenSelector({required this.state, required this.dispatch});

  static const _options = [5, 10, 15, 30, 60];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        ChoiceChip(
          label: const Text('未設定'),
          selected: state.timeTaken == null,
          onSelected: (_) => dispatch(const TimeTakenChanged(null)),
        ),
        ..._options.map((minutes) {
          return ChoiceChip(
            label: Text('$minutes分'),
            selected: state.timeTaken == minutes,
            onSelected: (_) => dispatch(TimeTakenChanged(minutes)),
          );
        }),
      ],
    );
  }
}

class _TemplateList extends StatelessWidget {
  final void Function(TaskFormAction) dispatch;

  const _TemplateList({required this.dispatch});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: kTaskTemplates.map((t) {
        final name = t['name'] as String;
        final days = t['intervalDays'] as int;
        final tags = (t['tags'] as List).cast<String>();
        return ListTile(
          dense: true,
          title: Text(name),
          subtitle: Text('$days日ごと / ${tags.join(', ')}'),
          trailing: const Icon(Icons.chevron_right, size: 16),
          onTap: () => dispatch(TemplateSelected(name, days, tags)),
        );
      }).toList(),
    );
  }
}
