import 'package:powersync/powersync.dart';

const schema = Schema([
  Table('workouts', [
    Column.text('created_at'),
    Column.text('name'),
    Column.text('notes'),
    Column.text('state'),
    Column.integer('completed'),
    Column.text('start_time'),
    Column.text('end_time'),
    Column.text('scheduled_time'),
    Column.text('template_id'),
    Column.text('circuits'),
    Column.text('type'),
    Column.text('phase_id'),
    Column.text('user_id')
  ]),
  Table('workout_items', [
    Column.text('created_at'),
    Column.text('name'),
    Column.text('circuit_node'),
    Column.integer('selected_index'),
    Column.text('notes'),
    Column.text('demo_url'),
    Column.text('tracking_fields'),
    Column.text('workout_id'),
    Column.integer('index'),
    Column.text('weight_unit'),
    Column.text('progression_name')
  ]),
]);
