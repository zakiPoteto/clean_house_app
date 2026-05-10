import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_error.freezed.dart';

@freezed
sealed class DomainError with _$DomainError implements Exception {
  const factory DomainError.csvParseFailed(String message) = CsvParseFailed;
  const factory DomainError.fileNotFound(String path) = FileNotFound;
  const factory DomainError.saveFailed(String message) = SaveFailed;
  const factory DomainError.taskNotFound(String id) = TaskNotFound;
}
