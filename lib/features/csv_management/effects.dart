import 'package:clean_house_app/features/csv_management/action.dart';
import 'package:clean_house_app/features/csv_management/state.dart';
import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/repositories/task_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useCsvEffects(
  CsvState state,
  void Function(CsvAction) dispatch,
  TaskRepository repo,
) {
  useEffect(() {
    if (!state.isExporting) return null;

    var cancelled = false;
    repo.exportToFile().then((result) {
      if (!cancelled) dispatch(ExportSucceeded(result.$1, result.$2));
    }).catchError((Object e) {
      if (!cancelled) {
        dispatch(OperationFailed(
          e is DomainError ? e : DomainError.saveFailed(e.toString()),
        ));
      }
    });
    return () { cancelled = true; };
  }, [state.isExporting]);

  useEffect(() {
    if (!state.isImporting) return null;

    var cancelled = false;
    repo.importCsv(state.importText).then((tasks) {
      if (!cancelled) dispatch(ImportSucceeded(tasks));
    }).catchError((Object e) {
      if (!cancelled) {
        dispatch(OperationFailed(
          e is DomainError ? e : DomainError.csvParseFailed(e.toString()),
        ));
      }
    });
    return () { cancelled = true; };
  }, [state.isImporting]);
}

