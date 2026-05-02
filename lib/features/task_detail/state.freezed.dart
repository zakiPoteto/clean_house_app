part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'MyClass._()を使ってクラスを構築したようです。このコンストラクタはfreeezed専用です。詳細: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TaskDetailState {
  Task get task => throw _privateConstructorUsedError;
  DateTime? get pendingCompleteDate => throw _privateConstructorUsedError;
  bool get pendingDelete => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  DomainError? get error => throw _privateConstructorUsedError;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskDetailStateCopyWith<TaskDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
    TaskDetailState value,
    $Res Function(TaskDetailState) then,
  ) = _$TaskDetailStateCopyWithImpl<$Res, TaskDetailState>;
  @useResult
  $Res call({
    Task task,
    DateTime? pendingCompleteDate,
    bool pendingDelete,
    bool isLoading,
    bool completed,
    bool deleted,
    DomainError? error,
  });

  $TaskCopyWith<$Res> get task;
  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$TaskDetailStateCopyWithImpl<$Res, $Val extends TaskDetailState>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? pendingCompleteDate = freezed,
    Object? pendingDelete = null,
    Object? isLoading = null,
    Object? completed = null,
    Object? deleted = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            task: null == task
                ? _value.task
                : task // ignore: cast_nullable_to_non_nullable
                      as Task,
            pendingCompleteDate: freezed == pendingCompleteDate
                ? _value.pendingCompleteDate
                : pendingCompleteDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            pendingDelete: null == pendingDelete
                ? _value.pendingDelete
                : pendingDelete // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as bool,
            deleted: null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as DomainError?,
          )
          as $Val,
    );
  }

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @override
  @pragma('vm:prefer-inline')
  $DomainErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $DomainErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskDetailStateImplCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory _$$TaskDetailStateImplCopyWith(
    _$TaskDetailStateImpl value,
    $Res Function(_$TaskDetailStateImpl) then,
  ) = __$$TaskDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Task task,
    DateTime? pendingCompleteDate,
    bool pendingDelete,
    bool isLoading,
    bool completed,
    bool deleted,
    DomainError? error,
  });

  @override
  $TaskCopyWith<$Res> get task;
  @override
  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$TaskDetailStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateImpl>
    implements _$$TaskDetailStateImplCopyWith<$Res> {
  __$$TaskDetailStateImplCopyWithImpl(
    _$TaskDetailStateImpl _value,
    $Res Function(_$TaskDetailStateImpl) _then,
  ) : super(_value, _then);

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? pendingCompleteDate = freezed,
    Object? pendingDelete = null,
    Object? isLoading = null,
    Object? completed = null,
    Object? deleted = null,
    Object? error = freezed,
  }) {
    return _then(
      _$TaskDetailStateImpl(
        task: null == task
            ? _value.task
            : task // ignore: cast_nullable_to_non_nullable
                  as Task,
        pendingCompleteDate: freezed == pendingCompleteDate
            ? _value.pendingCompleteDate
            : pendingCompleteDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        pendingDelete: null == pendingDelete
            ? _value.pendingDelete
            : pendingDelete // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as bool,
        deleted: null == deleted
            ? _value.deleted
            : deleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as DomainError?,
      ),
    );
  }
}

/// @nodoc

class _$TaskDetailStateImpl implements _TaskDetailState {
  const _$TaskDetailStateImpl({
    required this.task,
    this.pendingCompleteDate,
    this.pendingDelete = false,
    this.isLoading = false,
    this.completed = false,
    this.deleted = false,
    this.error,
  });

  @override
  final Task task;
  @override
  final DateTime? pendingCompleteDate;
  @override
  @JsonKey()
  final bool pendingDelete;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool completed;
  @override
  @JsonKey()
  final bool deleted;
  @override
  final DomainError? error;

  @override
  String toString() {
    return 'TaskDetailState(task: $task, pendingCompleteDate: $pendingCompleteDate, pendingDelete: $pendingDelete, isLoading: $isLoading, completed: $completed, deleted: $deleted, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.pendingCompleteDate, pendingCompleteDate) ||
                other.pendingCompleteDate == pendingCompleteDate) &&
            (identical(other.pendingDelete, pendingDelete) ||
                other.pendingDelete == pendingDelete) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    task,
    pendingCompleteDate,
    pendingDelete,
    isLoading,
    completed,
    deleted,
    error,
  );

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailStateImplCopyWith<_$TaskDetailStateImpl> get copyWith =>
      __$$TaskDetailStateImplCopyWithImpl<_$TaskDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TaskDetailState implements TaskDetailState {
  const factory _TaskDetailState({
    required final Task task,
    final DateTime? pendingCompleteDate,
    final bool pendingDelete,
    final bool isLoading,
    final bool completed,
    final bool deleted,
    final DomainError? error,
  }) = _$TaskDetailStateImpl;

  @override
  Task get task;
  @override
  DateTime? get pendingCompleteDate;
  @override
  bool get pendingDelete;
  @override
  bool get isLoading;
  @override
  bool get completed;
  @override
  bool get deleted;
  @override
  DomainError? get error;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskDetailStateImplCopyWith<_$TaskDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
