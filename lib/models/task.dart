import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String name,
    required int intervalDays,
    DateTime? lastCleanedDate,
    int? timeTaken,
    @Default([]) List<String> tags,
  }) = _Task;
}
