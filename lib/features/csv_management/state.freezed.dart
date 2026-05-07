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
mixin _$CsvState {
  String get importText => throw _privateConstructorUsedError;
  bool get isExporting => throw _privateConstructorUsedError;
  bool get isImporting => throw _privateConstructorUsedError;
  String? get exportedFilePath => throw _privateConstructorUsedError;
  String? get exportedContent => throw _privateConstructorUsedError;
  int? get importedCount => throw _privateConstructorUsedError;
  DomainError? get error => throw _privateConstructorUsedError;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CsvStateCopyWith<CsvState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CsvStateCopyWith<$Res> {
  factory $CsvStateCopyWith(CsvState value, $Res Function(CsvState) then) =
      _$CsvStateCopyWithImpl<$Res, CsvState>;
  @useResult
  $Res call({
    String importText,
    bool isExporting,
    bool isImporting,
    String? exportedFilePath,
    String? exportedContent,
    int? importedCount,
    DomainError? error,
  });

  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$CsvStateCopyWithImpl<$Res, $Val extends CsvState>
    implements $CsvStateCopyWith<$Res> {
  _$CsvStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? importText = null,
    Object? isExporting = null,
    Object? isImporting = null,
    Object? exportedFilePath = freezed,
    Object? exportedContent = freezed,
    Object? importedCount = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            importText: null == importText
                ? _value.importText
                : importText // ignore: cast_nullable_to_non_nullable
                      as String,
            isExporting: null == isExporting
                ? _value.isExporting
                : isExporting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isImporting: null == isImporting
                ? _value.isImporting
                : isImporting // ignore: cast_nullable_to_non_nullable
                      as bool,
            exportedFilePath: freezed == exportedFilePath
                ? _value.exportedFilePath
                : exportedFilePath // ignore: cast_nullable_to_non_nullable
                      as String?,
            exportedContent: freezed == exportedContent
                ? _value.exportedContent
                : exportedContent // ignore: cast_nullable_to_non_nullable
                      as String?,
            importedCount: freezed == importedCount
                ? _value.importedCount
                : importedCount // ignore: cast_nullable_to_non_nullable
                      as int?,
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
abstract class _$$CsvStateImplCopyWith<$Res>
    implements $CsvStateCopyWith<$Res> {
  factory _$$CsvStateImplCopyWith(
    _$CsvStateImpl value,
    $Res Function(_$CsvStateImpl) then,
  ) = __$$CsvStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String importText,
    bool isExporting,
    bool isImporting,
    String? exportedFilePath,
    String? exportedContent,
    int? importedCount,
    DomainError? error,
  });

  @override
  $DomainErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$CsvStateImplCopyWithImpl<$Res>
    extends _$CsvStateCopyWithImpl<$Res, _$CsvStateImpl>
    implements _$$CsvStateImplCopyWith<$Res> {
  __$$CsvStateImplCopyWithImpl(
    _$CsvStateImpl _value,
    $Res Function(_$CsvStateImpl) _then,
  ) : super(_value, _then);

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? importText = null,
    Object? isExporting = null,
    Object? isImporting = null,
    Object? exportedFilePath = freezed,
    Object? exportedContent = freezed,
    Object? importedCount = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$CsvStateImpl(
        importText: null == importText
            ? _value.importText
            : importText // ignore: cast_nullable_to_non_nullable
                  as String,
        isExporting: null == isExporting
            ? _value.isExporting
            : isExporting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isImporting: null == isImporting
            ? _value.isImporting
            : isImporting // ignore: cast_nullable_to_non_nullable
                  as bool,
        exportedFilePath: freezed == exportedFilePath
            ? _value.exportedFilePath
            : exportedFilePath // ignore: cast_nullable_to_non_nullable
                  as String?,
        exportedContent: freezed == exportedContent
            ? _value.exportedContent
            : exportedContent // ignore: cast_nullable_to_non_nullable
                  as String?,
        importedCount: freezed == importedCount
            ? _value.importedCount
            : importedCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as DomainError?,
      ),
    );
  }
}

/// @nodoc

class _$CsvStateImpl extends _CsvState {
  const _$CsvStateImpl({
    this.importText = '',
    this.isExporting = false,
    this.isImporting = false,
    this.exportedFilePath,
    this.exportedContent,
    this.importedCount,
    this.error,
  }) : super._();

  @override
  @JsonKey()
  final String importText;
  @override
  @JsonKey()
  final bool isExporting;
  @override
  @JsonKey()
  final bool isImporting;
  @override
  final String? exportedFilePath;
  @override
  final String? exportedContent;
  @override
  final int? importedCount;
  @override
  final DomainError? error;

  @override
  String toString() {
    return 'CsvState(importText: $importText, isExporting: $isExporting, isImporting: $isImporting, exportedFilePath: $exportedFilePath, exportedContent: $exportedContent, importedCount: $importedCount, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CsvStateImpl &&
            (identical(other.importText, importText) ||
                other.importText == importText) &&
            (identical(other.isExporting, isExporting) ||
                other.isExporting == isExporting) &&
            (identical(other.isImporting, isImporting) ||
                other.isImporting == isImporting) &&
            (identical(other.exportedFilePath, exportedFilePath) ||
                other.exportedFilePath == exportedFilePath) &&
            (identical(other.exportedContent, exportedContent) ||
                other.exportedContent == exportedContent) &&
            (identical(other.importedCount, importedCount) ||
                other.importedCount == importedCount) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    importText,
    isExporting,
    isImporting,
    exportedFilePath,
    exportedContent,
    importedCount,
    error,
  );

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CsvStateImplCopyWith<_$CsvStateImpl> get copyWith =>
      __$$CsvStateImplCopyWithImpl<_$CsvStateImpl>(this, _$identity);
}

abstract class _CsvState extends CsvState {
  const factory _CsvState({
    final String importText,
    final bool isExporting,
    final bool isImporting,
    final String? exportedFilePath,
    final String? exportedContent,
    final int? importedCount,
    final DomainError? error,
  }) = _$CsvStateImpl;
  const _CsvState._() : super._();

  @override
  String get importText;
  @override
  bool get isExporting;
  @override
  bool get isImporting;
  @override
  String? get exportedFilePath;
  @override
  String? get exportedContent;
  @override
  int? get importedCount;
  @override
  DomainError? get error;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CsvStateImplCopyWith<_$CsvStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
