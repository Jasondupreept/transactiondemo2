// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutImpl _$$WorkoutImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      public: json['public'] as bool?,
      notes: json['notes'] as String,
      circuits: (json['circuits'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      state: $enumDecodeNullable(_$WorkoutStateEnumMap, json['state']),
      templateId: json['template_id'] as String?,
      phaseId: json['phase_id'] as String?,
      scheduledTime: json['scheduled_time'] == null
          ? null
          : DateTime.parse(json['scheduled_time'] as String),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      phaseName: json['phase_name'] as String?,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$WorkoutImplToJson(_$WorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'public': instance.public,
      'notes': instance.notes,
      'circuits': instance.circuits,
      'state': _$WorkoutStateEnumMap[instance.state],
      'template_id': instance.templateId,
      'phase_id': instance.phaseId,
      'scheduled_time': instance.scheduledTime?.toIso8601String(),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'phase_name': instance.phaseName,
      'completed': instance.completed,
    };

const _$WorkoutStateEnumMap = {
  WorkoutState.template: 'template',
  WorkoutState.scheduled: 'scheduled',
  WorkoutState.tracking: 'tracking',
  WorkoutState.completed: 'completed',
};
