import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:powersync/sqlite3.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

abstract class HasName {
  String get name;
  bool? get public;
}

abstract class HasId {
  String get id;
}

@JsonEnum(fieldRename: FieldRename.kebab)
enum WorkoutState {
  template,
  scheduled,
  tracking,
  completed,
}

@freezed
class Workout with _$Workout implements HasName, HasId {
  const Workout._();
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Workout({
    required String id,
    required String name,
    bool? public,
    required String notes,
    required List<List<String>> circuits,
    WorkoutState? state,
    String? templateId,
    String? phaseId,
    DateTime? scheduledTime,
    DateTime? startTime,
    DateTime? endTime,
    String? phaseName,
    required bool completed,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);

  factory Workout.fromRow(Row row) {
    return Workout(
      id: row['id'],
      name: row['name'],
      notes: row['notes'],
      circuits: [],
      completed: row['completed'] == 1 ? true : false,
      startTime: row['start_time'] == null || row['start_time'] == ''
          ? null
          : DateTime.parse(row['start_time']),
      endTime: row['end_time'] == null || row['end_time'] == ''
          ? null
          : DateTime.parse(row['end_time']),
      scheduledTime: null,
      state: row['state'] == null
          ? null
          : WorkoutState.values.firstWhere(
              (e) => e.name == row['state'],
            ),
      templateId: row['template_id'],
      phaseId: row['phase_id'],
      public: row['public'] == 1 ? true : false,
      phaseName: row['phase_name'],
    );
  }

  List<Object?> toSQLParams() {
    return [
      id,
      name,
      notes,
      jsonEncode(circuits),
      completed == true ? 1 : 0,
      startTime == null ? '' : startTime.toString(),
      endTime == null ? '' : endTime.toString(),
      state?.name,
      phaseId,
      templateId,
    ];
  }
}
