import 'package:clean_house_app/features/csv_management/action.dart';
import 'package:clean_house_app/features/csv_management/state.dart';
import 'package:clean_house_app/features/csv_management/store.dart';
import 'package:clean_house_app/models/domain_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CsvManagementScreen extends HookConsumerWidget {
  const CsvManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (:state, :dispatch) = useCsvStore(ref);
    final importController = useTextEditingController(text: state.importText);

    useEffect(() {
      if (importController.text != state.importText) {
        importController.value = importController.value.copyWith(
          text: state.importText,
          selection: TextSelection.collapsed(offset: state.importText.length),
          composing: TextRange.empty,
        );
      }
      return null;
    }, [state.importText]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CSVバックアップ'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _ExportSection(state: state, dispatch: dispatch),
                const SizedBox(height: 32),
                _ImportSection(
                  state: state,
                  dispatch: dispatch,
                  controller: importController,
                ),
                if (state.error != null) ...[
                  const SizedBox(height: 16),
                  _ErrorBanner(message: _errorMessage(state.error!)),
                ],
              ],
            ),
    );
  }

  String _errorMessage(DomainError error) {
    return switch (error) {
      CsvParseFailed() => 'CSVの形式が正しくありません',
      _ => '操作に失敗しました',
    };
  }
}

class _ExportSection extends StatelessWidget {
  final CsvState state;
  final void Function(CsvAction) dispatch;

  const _ExportSection({required this.state, required this.dispatch});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('エクスポート', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 4),
        Text(
          'タスクデータをCSVファイルに保存します。',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: () => dispatch(const ExportRequested()),
            icon: const Icon(Icons.upload_file),
            label: const Text('CSVをエクスポート'),
          ),
        ),
        if (state.exportedFilePath != null) ...[
          const SizedBox(height: 12),
          _SuccessCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('保存先:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                SelectableText(
                  state.exportedFilePath!,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 8),
                TextButton.icon(
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(text: state.exportedContent ?? ''),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('CSVをクリップボードにコピーしました')),
                    );
                  },
                  icon: const Icon(Icons.copy, size: 16),
                  label: const Text('CSVをコピー'),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class _ImportSection extends StatelessWidget {
  final CsvState state;
  final void Function(CsvAction) dispatch;
  final TextEditingController controller;

  const _ImportSection({
    required this.state,
    required this.dispatch,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('インポート', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 4),
        Text(
          'CSVテキストを貼り付けてタスクを復元します。',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: controller,
          maxLines: 6,
          decoration: const InputDecoration(
            hintText: 'id,name,interval_days,...',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(12),
          ),
          style: const TextStyle(fontSize: 12, fontFamily: 'monospace'),
          onChanged: (v) => dispatch(ImportTextChanged(v)),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: state.canImport
                ? () => dispatch(const ImportRequested())
                : null,
            icon: const Icon(Icons.download),
            label: const Text('CSVをインポート'),
          ),
        ),
        if (state.importedCount != null) ...[
          const SizedBox(height: 12),
          _SuccessCard(
            child: Text(
              '${state.importedCount}件のタスクをインポートしました',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ],
    );
  }
}

class _SuccessCard extends StatelessWidget {
  final Widget child;
  const _SuccessCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        border: Border.all(color: Colors.green.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  final String message;
  const _ErrorBanner({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        border: Border.all(color: Colors.red.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        message,
        style: TextStyle(color: Colors.red.shade700),
      ),
    );
  }
}
