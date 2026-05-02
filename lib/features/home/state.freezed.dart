part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'MyClass._()を使ってクラスを構築したようです。このコンストラクタはfreeezed専用です。詳細: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get loadCounter => throw _privateConstructorUsedError;
  String? get pendingCompleteTaskId => throw _privateConstructorUsedError;
  DateTime? get pendingCompleteDate => throw _privateConstructorUsedError;
  DomainError? get error => throw _privateConstructorUsedError;
  TaskStatus? get filterStatus => throw _privateConstructorUsedError;
  String? get filterTag => throw _privateConstructorUsedError;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    List<Task> tasks,
    bool isLoading,
    int loadCounter,
    String? pendingCompleteTaskId,
    DateTime? pendingCompleteDate,
    DomainError? error,
    TaskStatus? filterStatus,
    String? filterTag,
  });

  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? loadCounter = null,
    Object? pendingCompleteTaskId = freezed,
    Object? pendingCompleteDate = freezed,
    Object? error = freezed,
    Object? filterStatus = freezed,
    Object? filterTag = freezed,
  }) {
    return _then(
      _value.copyWith(
            tasks: null == tasks
                ? _value.tasks
                : tasks // ignore: cast_nullable_to_non_nullable
                      as List<Task>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            loadCounter: null == loadCounter
                ? _value.loadCounter
                : loadCounter // ignore: cast_nullable_to_non_nullable
                      as int,
            pendingCompleteTaskId: freezed == pendingCompleteTaskId
                ? _value.pendingCompleteTaskId
                : pendingCompleteTaskId // ignore: cast_nullable_to_non_nullable
                      as String?,
            pendingCompleteDate: freezed == pendingCompleteDate
                ? _value.pendingCompleteDate
                : pendingCompleteDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as DomainError?,
            filterStatus: freezed == filterStatus
                ? _value.filterStatus
                : filterStatus // ignore: cast_nullable_to_non_nullable
                      as TaskStatus?,
            filterTag: freezed == filterTag
                ? _value.filterTag
                : filterTag // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Task> tasks,
    bool isLoading,
    int loadCounter,
    String? pendingCompleteTaskId,
    DateTime? pendingCompleteDate,
    DomainError? error,
    TaskStatus? filterStatus,
    String? filterTag,
  });

  @override
  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? loadCounter = null,
    Object? pendingCompleteTaskId = freezed,
    Object? pendingCompleteDate = freezed,
    Object? error = freezed,
    Object? filterStatus = freezed,
    Object? filterTag = freezed,
  }) {
    return _then(
      _$HomeStateImpl(
        tasks: null == tasks
            ? _value._tasks
            : tasks // ignore: cast_nullable_to_non_nullable
                  as List<Task>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        loadCounter: null == loadCounter
            ? _value.loadCounter
            : loadCounter // ignore: cast_nullable_to_non_nullable
                  as int,
        pendingCompleteTaskId: freezed == pendingCompleteTaskId
            ? _value.pendingCompleteTaskId
            : pendingCompleteTaskId // ignore: cast_nullable_to_non_nullable
                  as String?,
        pendingCompleteDate: freezed == pendingCompleteDate
            ? _value.pendingCompleteDate
            : pendingCompleteDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as DomainError?,
        filterStatus: freezed == filterStatus
            ? _value.filterStatus
            : filterStatus // ignore: cast_nullable_to_non_nullable
                  as TaskStatus?,
        filterTag: freezed == filterTag
            ? _value.filterTag
            : filterTag // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    final List<Task> tasks = const [],
    this.isLoading = true,
    this.loadCounter = 0,
    this.pendingCompleteTaskId,
    this.pendingCompleteDate,
    this.error,
    this.filterStatus,
    this.filterTag,
  }) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int loadCounter;
  @override
  final String? pendingCompleteTaskId;
  @override
  final DateTime? pendingCompleteDate;
  @override
  final DomainError? error;
  @override
  final TaskStatus? filterStatus;
  @override
  final String? filterTag;

  @override
  String toString() {
    return 'HomeState(tasks: $tasks, isLoading: $isLoading, loadCounter: $loadCounter, pendingCompleteTaskId: $pendingCompleteTaskId, pendingCompleteDate: $pendingCompleteDate, error: $error, filterStatus: $filterStatus, filterTag: $filterTag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadCounter, loadCounter) ||
                other.loadCounter == loadCounter) &&
            (identical(other.pendingCompleteTaskId, pendingCompleteTaskId) ||
                other.pendingCompleteTaskId == pendingCompleteTaskId) &&
            (identical(other.pendingCompleteDate, pendingCompleteDate) ||
                other.pendingCompleteDate == pendingCompleteDate) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.filterStatus, filterStatus) ||
                other.filterStatus == filterStatus) &&
            (identical(other.filterTag, filterTag) ||
                other.filterTag == filterTag));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_tasks),
    isLoading,
    loadCounter,
    pendingCompleteTaskId,
    pendingCompleteDate,
    error,
    filterStatus,
    filterTag,
  );

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final List<Task> tasks,
    final bool isLoading,
    final int loadCounter,
    final String? pendingCompleteTaskId,
    final DateTime? pendingCompleteDate,
    final DomainError? error,
    final TaskStatus? filterStatus,
    final String? filterTag,
  }) = _$HomeStateImpl;

  @override
  List<Task> get tasks;
  @override
  bool get isLoading;
  @override
  int get loadCounter;
  @override
  String? get pendingCompleteTaskId;
  @override
  DateTime? get pendingCompleteDate;
  @override
  DomainError? get error;
  @override
  TaskStatus? get filterStatus;
  @override
  String? get filterTag;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
