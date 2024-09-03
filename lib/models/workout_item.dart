import 'package:powersync/sqlite3.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_item.freezed.dart';
part 'workout_item.g.dart';

@freezed
class WorkoutItem with _$WorkoutItem {
  const WorkoutItem._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WorkoutItem({
    required String id,
    required int index,
    String? name,
    required String workoutId,
  }) = _WorkoutItem;

  factory WorkoutItem.fromJson(Map<String, dynamic> json) =>
      _$WorkoutItemFromJson(json);

  factory WorkoutItem.shellFromRow(Row row) => WorkoutItem(
        id: row['id'] as String,
        index: row['wi_order_index'] as int,
        name: row['name'] as String?,
        workoutId: row['workout_id'] as String,
      );
  factory WorkoutItem.fromRow(Row row) => WorkoutItem(
        id: row['id'] as String,
        index: row['wi_order_index'] as int,
        name: row['name'] as String?,
        workoutId: row['workout_id'] as String,
      );

  List<Object?> toIdList() => [id];

  List<Object?> toSqlParams() => [
        id,
        index,
        name,
        workoutId,
      ];
}
