// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutItem _$WorkoutItemFromJson(Map<String, dynamic> json) {
  return _WorkoutItem.fromJson(json);
}

/// @nodoc
mixin _$WorkoutItem {
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get workoutId => throw _privateConstructorUsedError;

  /// Serializes this WorkoutItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutItemCopyWith<WorkoutItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutItemCopyWith<$Res> {
  factory $WorkoutItemCopyWith(
          WorkoutItem value, $Res Function(WorkoutItem) then) =
      _$WorkoutItemCopyWithImpl<$Res, WorkoutItem>;
  @useResult
  $Res call({String id, int index, String? name, String workoutId});
}

/// @nodoc
class _$WorkoutItemCopyWithImpl<$Res, $Val extends WorkoutItem>
    implements $WorkoutItemCopyWith<$Res> {
  _$WorkoutItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? name = freezed,
    Object? workoutId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutItemImplCopyWith<$Res>
    implements $WorkoutItemCopyWith<$Res> {
  factory _$$WorkoutItemImplCopyWith(
          _$WorkoutItemImpl value, $Res Function(_$WorkoutItemImpl) then) =
      __$$WorkoutItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int index, String? name, String workoutId});
}

/// @nodoc
class __$$WorkoutItemImplCopyWithImpl<$Res>
    extends _$WorkoutItemCopyWithImpl<$Res, _$WorkoutItemImpl>
    implements _$$WorkoutItemImplCopyWith<$Res> {
  __$$WorkoutItemImplCopyWithImpl(
      _$WorkoutItemImpl _value, $Res Function(_$WorkoutItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? name = freezed,
    Object? workoutId = null,
  }) {
    return _then(_$WorkoutItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WorkoutItemImpl extends _WorkoutItem {
  const _$WorkoutItemImpl(
      {required this.id,
      required this.index,
      this.name,
      required this.workoutId})
      : super._();

  factory _$WorkoutItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutItemImplFromJson(json);

  @override
  final String id;
  @override
  final int index;
  @override
  final String? name;
  @override
  final String workoutId;

  @override
  String toString() {
    return 'WorkoutItem(id: $id, index: $index, name: $name, workoutId: $workoutId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, index, name, workoutId);

  /// Create a copy of WorkoutItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutItemImplCopyWith<_$WorkoutItemImpl> get copyWith =>
      __$$WorkoutItemImplCopyWithImpl<_$WorkoutItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutItemImplToJson(
      this,
    );
  }
}

abstract class _WorkoutItem extends WorkoutItem {
  const factory _WorkoutItem(
      {required final String id,
      required final int index,
      final String? name,
      required final String workoutId}) = _$WorkoutItemImpl;
  const _WorkoutItem._() : super._();

  factory _WorkoutItem.fromJson(Map<String, dynamic> json) =
      _$WorkoutItemImpl.fromJson;

  @override
  String get id;
  @override
  int get index;
  @override
  String? get name;
  @override
  String get workoutId;

  /// Create a copy of WorkoutItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutItemImplCopyWith<_$WorkoutItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
