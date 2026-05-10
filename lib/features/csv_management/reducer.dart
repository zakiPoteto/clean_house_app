import 'package:clean_house_app/features/csv_management/action.dart';
import 'package:clean_house_app/features/csv_management/state.dart';

CsvState reduce(CsvState state, CsvAction action) {
  return switch (action) {
    CsvNoop() => state,
    ImportTextChanged(:final text) => state.copyWith(
        importText: text,
        error: null,
        importedCount: null,
      ),
    ExportRequested() => state.copyWith(
        isExporting: true,
        exportedFilePath: null,
        exportedContent: null,
        error: null,
      ),
    ImportRequested() => state.copyWith(
        isImporting: true,
        importedCount: null,
        error: null,
      ),
    ExportSucceeded(:final csvContent, :final filePath) => state.copyWith(
        isExporting: false,
        exportedContent: csvContent,
        exportedFilePath: filePath,
      ),
    ImportSucceeded(:final tasks) => state.copyWith(
        isImporting: false,
        importedCount: tasks.length,
        importText: '',
      ),
    OperationFailed(:final error) => state.copyWith(
        isExporting: false,
        isImporting: false,
        error: error,
      ),
  };
}
