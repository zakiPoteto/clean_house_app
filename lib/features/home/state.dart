import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/utils/app_date_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Task> tasks,
    @Default(true) bool isLoading,
    @Default(0) int loadCounter,
    String? pendingCompleteTaskId,
    DateTime? pendingCompleteDate,
    DomainError? error,
    DomainError? completeError,
    TaskStatus? filterStatus,
    String? filterTag,
  }) = _HomeState;
}
