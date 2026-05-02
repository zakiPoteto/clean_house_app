// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TaskFormState {
  String get name => throw _privateConstructorUsedError;
  int get intervalDays => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  Task? get editingTask => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  DomainError? get error => throw _privateConstructorUsedError;

  /// Create a copy of TaskFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
    TaskFormState value,
    $Res Function(TaskFormState) then,
  ) = _$TaskFormStateCopyWithImpl<$Res, TaskFormState>;
  @useResult
  $Res call({
    String name,
    int intervalDays,
    List<String> tags,
    Task? editingTask,
    bool isSaving,
    bool saved,
    DomainError? error,
  });

  $TaskCopyWith<$Res>? get editingTask;
  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res, $Val extends TaskFormState>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? intervalDays = null,
    Object? tags = null,
    Object? editingTask = freezed,
    Object? isSaving = null,
    Object? saved = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            intervalDays: null == intervalDays
                ? _value.intervalDays
                : intervalDays // ignore: cast_nullable_to_non_nullable
                      as int,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            editingTask: freezed == editingTask
                ? _value.editingTask
                : editingTask // ignore: cast_nullable_to_non_nullable
                      as Task?,
            isSaving: null == isSaving
                ? _value.isSaving
                : isSaving // ignore: cast_nullable_to_non_nullable
                      as bool,
            saved: null == saved
                ? _value.saved
                : saved // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as DomainError?,
          )
          as $Val,
    );
  }

  /// Create a copy of TaskFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res>? get editingTask {
    if (_value.editingTask == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.editingTask!, (value) {
      return _then(_value.copyWith(editingTask: value) as $Val);
    });
  }

  /// Create a copy of TaskFormState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$TaskFormStateImplCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$$TaskFormStateImplCopyWith(
    _$TaskFormStateImpl value,
    $Res Function(_$TaskFormStateImpl) then,
  ) = __$$TaskFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    int intervalDays,
    List<String> tags,
    Task? editingTask,
    bool isSaving,
    bool saved,
    DomainError? error,
  });

  @override
  $TaskCopyWith<$Res>? get editingTask;
  @override
  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$TaskFormStateImplCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res, _$TaskFormStateImpl>
    implements _$$TaskFormStateImplCopyWith<$Res> {
  __$$TaskFormStateImplCopyWithImpl(
    _$TaskFormStateImpl _value,
    $Res Function(_$TaskFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? intervalDays = null,
    Object? tags = null,
    Object? editingTask = freezed,
    Object? isSaving = null,
    Object? saved = null,
    Object? error = freezed,
  }) {
    return _then(
      _$TaskFormStateImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        intervalDays: null == intervalDays
            ? _value.intervalDays
            : intervalDays // ignore: cast_nullable_to_non_nullable
                  as int,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        editingTask: freezed == editingTask
            ? _value.editingTask
            : editingTask // ignore: cast_nullable_to_non_nullable
                  as Task?,
        isSaving: null == isSaving
            ? _value.isSaving
            : isSaving // ignore: cast_nullable_to_non_nullable
                  as bool,
        saved: null == saved
            ? _value.saved
            : saved // ignore: cast_nullable_to_non_nullable
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

class _$TaskFormStateImpl extends _TaskFormState {
  const _$TaskFormStateImpl({
    this.name = '',
    this.intervalDays = 7,
    final List<String> tags = const [],
    this.editingTask,
    this.isSaving = false,
    this.saved = false,
    this.error,
  }) : _tags = tags,
       super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int intervalDays;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final Task? editingTask;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool saved;
  @override
  final DomainError? error;

  @override
  String toString() {
    return 'TaskFormState(name: $name, intervalDays: $intervalDays, tags: $tags, editingTask: $editingTask, isSaving: $isSaving, saved: $saved, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFormStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.intervalDays, intervalDays) ||
                other.intervalDays == intervalDays) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.editingTask, editingTask) ||
                other.editingTask == editingTask) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    intervalDays,
    const DeepCollectionEquality().hash(_tags),
    editingTask,
    isSaving,
    saved,
    error,
  );

  /// Create a copy of TaskFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFormStateImplCopyWith<_$TaskFormStateImpl> get copyWith =>
      __$$TaskFormStateImplCopyWithImpl<_$TaskFormStateImpl>(this, _$identity);
}

abstract class _TaskFormState extends TaskFormState {
  const factory _TaskFormState({
    final String name,
    final int intervalDays,
    final List<String> tags,
    final Task? editingTask,
    final bool isSaving,
    final bool saved,
    final DomainError? error,
  }) = _$TaskFormStateImpl;
  const _TaskFormState._() : super._();

  @override
  String get name;
  @override
  int get intervalDays;
  @override
  List<String> get tags;
  @override
  Task? get editingTask;
  @override
  bool get isSaving;
  @override
  bool get saved;
  @override
  DomainError? get error;

  /// Create a copy of TaskFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskFormStateImplCopyWith<_$TaskFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
