import 'package:clean_house_app/models/domain_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CsvState with _$CsvState {
  const factory CsvState({
    @Default('') String importText,
    @Default(false) bool isExporting,
    @Default(false) bool isImporting,
    String? exportedFilePath,
    String? exportedContent,
    int? importedCount,
    DomainError? error,
  }) = _CsvState;

  const CsvState._();

  bool get isLoading => isExporting || isImporting;
  bool get canImport => importText.trim().isNotEmpty;
}
