// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DomainError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) csvParseFailed,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String message) saveFailed,
    required TResult Function(String id) taskNotFound,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? csvParseFailed,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String message)? saveFailed,
    TResult? Function(String id)? taskNotFound,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? csvParseFailed,
    TResult Function(String path)? fileNotFound,
    TResult Function(String message)? saveFailed,
    TResult Function(String id)? taskNotFound,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvParseFailed value) csvParseFailed,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(TaskNotFound value) taskNotFound,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvParseFailed value)? csvParseFailed,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(TaskNotFound value)? taskNotFound,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvParseFailed value)? csvParseFailed,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(TaskNotFound value)? taskNotFound,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainErrorCopyWith<$Res> {
  factory $DomainErrorCopyWith(
    DomainError value,
    $Res Function(DomainError) then,
  ) = _$DomainErrorCopyWithImpl<$Res, DomainError>;
}

/// @nodoc
class _$DomainErrorCopyWithImpl<$Res, $Val extends DomainError>
    implements $DomainErrorCopyWith<$Res> {
  _$DomainErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CsvParseFailedImplCopyWith<$Res> {
  factory _$$CsvParseFailedImplCopyWith(
    _$CsvParseFailedImpl value,
    $Res Function(_$CsvParseFailedImpl) then,
  ) = __$$CsvParseFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CsvParseFailedImplCopyWithImpl<$Res>
    extends _$DomainErrorCopyWithImpl<$Res, _$CsvParseFailedImpl>
    implements _$$CsvParseFailedImplCopyWith<$Res> {
  __$$CsvParseFailedImplCopyWithImpl(
    _$CsvParseFailedImpl _value,
    $Res Function(_$CsvParseFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CsvParseFailedImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CsvParseFailedImpl implements CsvParseFailed {
  const _$CsvParseFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DomainError.csvParseFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CsvParseFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CsvParseFailedImplCopyWith<_$CsvParseFailedImpl> get copyWith =>
      __$$CsvParseFailedImplCopyWithImpl<_$CsvParseFailedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) csvParseFailed,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String message) saveFailed,
    required TResult Function(String id) taskNotFound,
  }) {
    return csvParseFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? csvParseFailed,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String message)? saveFailed,
    TResult? Function(String id)? taskNotFound,
  }) {
    return csvParseFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? csvParseFailed,
    TResult Function(String path)? fileNotFound,
    TResult Function(String message)? saveFailed,
    TResult Function(String id)? taskNotFound,
    required TResult orElse(),
  }) {
    if (csvParseFailed != null) {
      return csvParseFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvParseFailed value) csvParseFailed,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(TaskNotFound value) taskNotFound,
  }) {
    return csvParseFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvParseFailed value)? csvParseFailed,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(TaskNotFound value)? taskNotFound,
  }) {
    return csvParseFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvParseFailed value)? csvParseFailed,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(TaskNotFound value)? taskNotFound,
    required TResult orElse(),
  }) {
    if (csvParseFailed != null) {
      return csvParseFailed(this);
    }
    return orElse();
  }
}

abstract class CsvParseFailed implements DomainError {
  const factory CsvParseFailed(final String message) = _$CsvParseFailedImpl;

  String get message;

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CsvParseFailedImplCopyWith<_$CsvParseFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileNotFoundImplCopyWith<$Res> {
  factory _$$FileNotFoundImplCopyWith(
    _$FileNotFoundImpl value,
    $Res Function(_$FileNotFoundImpl) then,
  ) = __$$FileNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$FileNotFoundImplCopyWithImpl<$Res>
    extends _$DomainErrorCopyWithImpl<$Res, _$FileNotFoundImpl>
    implements _$$FileNotFoundImplCopyWith<$Res> {
  __$$FileNotFoundImplCopyWithImpl(
    _$FileNotFoundImpl _value,
    $Res Function(_$FileNotFoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? path = null}) {
    return _then(
      _$FileNotFoundImpl(
        null == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FileNotFoundImpl implements FileNotFound {
  const _$FileNotFoundImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'DomainError.fileNotFound(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileNotFoundImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileNotFoundImplCopyWith<_$FileNotFoundImpl> get copyWith =>
      __$$FileNotFoundImplCopyWithImpl<_$FileNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) csvParseFailed,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String message) saveFailed,
    required TResult Function(String id) taskNotFound,
  }) {
    return fileNotFound(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? csvParseFailed,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String message)? saveFailed,
    TResult? Function(String id)? taskNotFound,
  }) {
    return fileNotFound?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? csvParseFailed,
    TResult Function(String path)? fileNotFound,
    TResult Function(String message)? saveFailed,
    TResult Function(String id)? taskNotFound,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvParseFailed value) csvParseFailed,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(TaskNotFound value) taskNotFound,
  }) {
    return fileNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvParseFailed value)? csvParseFailed,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(TaskNotFound value)? taskNotFound,
  }) {
    return fileNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvParseFailed value)? csvParseFailed,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(TaskNotFound value)? taskNotFound,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(this);
    }
    return orElse();
  }
}

abstract class FileNotFound implements DomainError {
  const factory FileNotFound(final String path) = _$FileNotFoundImpl;

  String get path;

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileNotFoundImplCopyWith<_$FileNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveFailedImplCopyWith<$Res> {
  factory _$$SaveFailedImplCopyWith(
    _$SaveFailedImpl value,
    $Res Function(_$SaveFailedImpl) then,
  ) = __$$SaveFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SaveFailedImplCopyWithImpl<$Res>
    extends _$DomainErrorCopyWithImpl<$Res, _$SaveFailedImpl>
    implements _$$SaveFailedImplCopyWith<$Res> {
  __$$SaveFailedImplCopyWithImpl(
    _$SaveFailedImpl _value,
    $Res Function(_$SaveFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SaveFailedImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SaveFailedImpl implements SaveFailed {
  const _$SaveFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DomainError.saveFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFailedImplCopyWith<_$SaveFailedImpl> get copyWith =>
      __$$SaveFailedImplCopyWithImpl<_$SaveFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) csvParseFailed,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String message) saveFailed,
    required TResult Function(String id) taskNotFound,
  }) {
    return saveFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? csvParseFailed,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String message)? saveFailed,
    TResult? Function(String id)? taskNotFound,
  }) {
    return saveFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? csvParseFailed,
    TResult Function(String path)? fileNotFound,
    TResult Function(String message)? saveFailed,
    TResult Function(String id)? taskNotFound,
    required TResult orElse(),
  }) {
    if (saveFailed != null) {
      return saveFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvParseFailed value) csvParseFailed,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(TaskNotFound value) taskNotFound,
  }) {
    return saveFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvParseFailed value)? csvParseFailed,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(TaskNotFound value)? taskNotFound,
  }) {
    return saveFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvParseFailed value)? csvParseFailed,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(TaskNotFound value)? taskNotFound,
    required TResult orElse(),
  }) {
    if (saveFailed != null) {
      return saveFailed(this);
    }
    return orElse();
  }
}

abstract class SaveFailed implements DomainError {
  const factory SaveFailed(final String message) = _$SaveFailedImpl;

  String get message;

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveFailedImplCopyWith<_$SaveFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskNotFoundImplCopyWith<$Res> {
  factory _$$TaskNotFoundImplCopyWith(
    _$TaskNotFoundImpl value,
    $Res Function(_$TaskNotFoundImpl) then,
  ) = __$$TaskNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$TaskNotFoundImplCopyWithImpl<$Res>
    extends _$DomainErrorCopyWithImpl<$Res, _$TaskNotFoundImpl>
    implements _$$TaskNotFoundImplCopyWith<$Res> {
  __$$TaskNotFoundImplCopyWithImpl(
    _$TaskNotFoundImpl _value,
    $Res Function(_$TaskNotFoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$TaskNotFoundImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$TaskNotFoundImpl implements TaskNotFound {
  const _$TaskNotFoundImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DomainError.taskNotFound(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskNotFoundImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskNotFoundImplCopyWith<_$TaskNotFoundImpl> get copyWith =>
      __$$TaskNotFoundImplCopyWithImpl<_$TaskNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) csvParseFailed,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String message) saveFailed,
    required TResult Function(String id) taskNotFound,
  }) {
    return taskNotFound(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? csvParseFailed,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String message)? saveFailed,
    TResult? Function(String id)? taskNotFound,
  }) {
    return taskNotFound?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? csvParseFailed,
    TResult Function(String path)? fileNotFound,
    TResult Function(String message)? saveFailed,
    TResult Function(String id)? taskNotFound,
    required TResult orElse(),
  }) {
    if (taskNotFound != null) {
      return taskNotFound(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvParseFailed value) csvParseFailed,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(TaskNotFound value) taskNotFound,
  }) {
    return taskNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvParseFailed value)? csvParseFailed,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(TaskNotFound value)? taskNotFound,
  }) {
    return taskNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvParseFailed value)? csvParseFailed,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(TaskNotFound value)? taskNotFound,
    required TResult orElse(),
  }) {
    if (taskNotFound != null) {
      return taskNotFound(this);
    }
    return orElse();
  }
}

abstract class TaskNotFound implements DomainError {
  const factory TaskNotFound(final String id) = _$TaskNotFoundImpl;

  String get id;

  /// Create a copy of DomainError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskNotFoundImplCopyWith<_$TaskNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
