// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutItemImpl _$$WorkoutItemImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutItemImpl(
      id: json['id'] as String,
      index: (json['index'] as num).toInt(),
      name: json['name'] as String?,
      workoutId: json['workout_id'] as String,
    );

Map<String, dynamic> _$$WorkoutItemImplToJson(_$WorkoutItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'name': instance.name,
      'workout_id': instance.workoutId,
    };
