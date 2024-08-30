// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  List<List<String>> get circuits => throw _privateConstructorUsedError;
  WorkoutState? get state => throw _privateConstructorUsedError;
  String? get templateId => throw _privateConstructorUsedError;
  String? get phaseId => throw _privateConstructorUsedError;
  DateTime? get scheduledTime => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  String? get phaseName => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this Workout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool? public,
      String notes,
      List<List<String>> circuits,
      WorkoutState? state,
      String? templateId,
      String? phaseId,
      DateTime? scheduledTime,
      DateTime? startTime,
      DateTime? endTime,
      String? phaseName,
      bool completed});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? public = freezed,
    Object? notes = null,
    Object? circuits = null,
    Object? state = freezed,
    Object? templateId = freezed,
    Object? phaseId = freezed,
    Object? scheduledTime = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? phaseName = freezed,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      circuits: null == circuits
          ? _value.circuits
          : circuits // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as WorkoutState?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseId: freezed == phaseId
          ? _value.phaseId
          : phaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledTime: freezed == scheduledTime
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phaseName: freezed == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutImplCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$WorkoutImplCopyWith(
          _$WorkoutImpl value, $Res Function(_$WorkoutImpl) then) =
      __$$WorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool? public,
      String notes,
      List<List<String>> circuits,
      WorkoutState? state,
      String? templateId,
      String? phaseId,
      DateTime? scheduledTime,
      DateTime? startTime,
      DateTime? endTime,
      String? phaseName,
      bool completed});
}

/// @nodoc
class __$$WorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutCopyWithImpl<$Res, _$WorkoutImpl>
    implements _$$WorkoutImplCopyWith<$Res> {
  __$$WorkoutImplCopyWithImpl(
      _$WorkoutImpl _value, $Res Function(_$WorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? public = freezed,
    Object? notes = null,
    Object? circuits = null,
    Object? state = freezed,
    Object? templateId = freezed,
    Object? phaseId = freezed,
    Object? scheduledTime = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? phaseName = freezed,
    Object? completed = null,
  }) {
    return _then(_$WorkoutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      circuits: null == circuits
          ? _value._circuits
          : circuits // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as WorkoutState?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseId: freezed == phaseId
          ? _value.phaseId
          : phaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledTime: freezed == scheduledTime
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phaseName: freezed == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WorkoutImpl extends _Workout {
  const _$WorkoutImpl(
      {required this.id,
      required this.name,
      this.public,
      required this.notes,
      required final List<List<String>> circuits,
      this.state,
      this.templateId,
      this.phaseId,
      this.scheduledTime,
      this.startTime,
      this.endTime,
      this.phaseName,
      required this.completed})
      : _circuits = circuits,
        super._();

  factory _$WorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool? public;
  @override
  final String notes;
  final List<List<String>> _circuits;
  @override
  List<List<String>> get circuits {
    if (_circuits is EqualUnmodifiableListView) return _circuits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_circuits);
  }

  @override
  final WorkoutState? state;
  @override
  final String? templateId;
  @override
  final String? phaseId;
  @override
  final DateTime? scheduledTime;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final String? phaseName;
  @override
  final bool completed;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, public: $public, notes: $notes, circuits: $circuits, state: $state, templateId: $templateId, phaseId: $phaseId, scheduledTime: $scheduledTime, startTime: $startTime, endTime: $endTime, phaseName: $phaseName, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._circuits, _circuits) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.phaseId, phaseId) || other.phaseId == phaseId) &&
            (identical(other.scheduledTime, scheduledTime) ||
                other.scheduledTime == scheduledTime) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.phaseName, phaseName) ||
                other.phaseName == phaseName) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      public,
      notes,
      const DeepCollectionEquality().hash(_circuits),
      state,
      templateId,
      phaseId,
      scheduledTime,
      startTime,
      endTime,
      phaseName,
      completed);

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      __$$WorkoutImplCopyWithImpl<_$WorkoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutImplToJson(
      this,
    );
  }
}

abstract class _Workout extends Workout {
  const factory _Workout(
      {required final String id,
      required final String name,
      final bool? public,
      required final String notes,
      required final List<List<String>> circuits,
      final WorkoutState? state,
      final String? templateId,
      final String? phaseId,
      final DateTime? scheduledTime,
      final DateTime? startTime,
      final DateTime? endTime,
      final String? phaseName,
      required final bool completed}) = _$WorkoutImpl;
  const _Workout._() : super._();

  factory _Workout.fromJson(Map<String, dynamic> json) = _$WorkoutImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool? get public;
  @override
  String get notes;
  @override
  List<List<String>> get circuits;
  @override
  WorkoutState? get state;
  @override
  String? get templateId;
  @override
  String? get phaseId;
  @override
  DateTime? get scheduledTime;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  String? get phaseName;
  @override
  bool get completed;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
