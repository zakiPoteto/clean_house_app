part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'MyClass._()を使ってクラスを構築したようです。このコンストラクタはfreeezed専用です。詳細: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get intervalDays => throw _privateConstructorUsedError;
  DateTime? get lastCleanedDate => throw _privateConstructorUsedError;
  int? get timeTaken => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({
    String id,
    String name,
    int intervalDays,
    DateTime? lastCleanedDate,
    int? timeTaken,
    List<String> tags,
  });
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? intervalDays = null,
    Object? lastCleanedDate = freezed,
    Object? timeTaken = freezed,
    Object? tags = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            intervalDays: null == intervalDays
                ? _value.intervalDays
                : intervalDays // ignore: cast_nullable_to_non_nullable
                      as int,
            lastCleanedDate: freezed == lastCleanedDate
                ? _value.lastCleanedDate
                : lastCleanedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            timeTaken: freezed == timeTaken
                ? _value.timeTaken
                : timeTaken // ignore: cast_nullable_to_non_nullable
                      as int?,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
    _$TaskImpl value,
    $Res Function(_$TaskImpl) then,
  ) = __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    int intervalDays,
    DateTime? lastCleanedDate,
    int? timeTaken,
    List<String> tags,
  });
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
    : super(_value, _then);

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? intervalDays = null,
    Object? lastCleanedDate = freezed,
    Object? timeTaken = freezed,
    Object? tags = null,
  }) {
    return _then(
      _$TaskImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        intervalDays: null == intervalDays
            ? _value.intervalDays
            : intervalDays // ignore: cast_nullable_to_non_nullable
                  as int,
        lastCleanedDate: freezed == lastCleanedDate
            ? _value.lastCleanedDate
            : lastCleanedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        timeTaken: freezed == timeTaken
            ? _value.timeTaken
            : timeTaken // ignore: cast_nullable_to_non_nullable
                  as int?,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$TaskImpl implements _Task {
  const _$TaskImpl({
    required this.id,
    required this.name,
    required this.intervalDays,
    this.lastCleanedDate,
    this.timeTaken,
    final List<String> tags = const [],
  }) : _tags = tags;

  @override
  final String id;
  @override
  final String name;
  @override
  final int intervalDays;
  @override
  final DateTime? lastCleanedDate;
  @override
  final int? timeTaken;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Task(id: $id, name: $name, intervalDays: $intervalDays, lastCleanedDate: $lastCleanedDate, timeTaken: $timeTaken, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.intervalDays, intervalDays) ||
                other.intervalDays == intervalDays) &&
            (identical(other.lastCleanedDate, lastCleanedDate) ||
                other.lastCleanedDate == lastCleanedDate) &&
            (identical(other.timeTaken, timeTaken) ||
                other.timeTaken == timeTaken) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    intervalDays,
    lastCleanedDate,
    timeTaken,
    const DeepCollectionEquality().hash(_tags),
  );

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task({
    required final String id,
    required final String name,
    required final int intervalDays,
    final DateTime? lastCleanedDate,
    final int? timeTaken,
    final List<String> tags,
  }) = _$TaskImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  int get intervalDays;
  @override
  DateTime? get lastCleanedDate;
  @override
  int? get timeTaken;
  @override
  List<String> get tags;

  /// コピーを作成し、指定されたフィールドを非null値で置き換えます。
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
