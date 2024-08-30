import 'package:logger/logger.dart';
import 'package:transactiondemo/models/workout.dart';
import 'package:transactiondemo/powersync.dart';
import 'package:uuid/uuid.dart';

final log = Logger();

class PowersyncWorkoutRepository {
  static Stream<List<Workout>> streamWorkouts(WorkoutState state) {
    return db.watch(
      'SELECT * FROM workouts WHERE state == ? AND phase_id IS NULL ORDER BY name ASC',
      parameters: [state.name],
    ).map((results) {
      return results.map((row) => Workout.fromRow(row)).toList();
    });
  }

  static Future<void> updateWorkout() async {
    final w = Workout(
      id: const Uuid().v4().toString(),
      name: 'testing',
      notes: '',
      circuits: [],
      completed: false,
      startTime: null,
      endTime: null,
      state: WorkoutState.template,
      phaseId: null,
      templateId: null,
    );

    // TODO: uncomment this code, and comment the transaction code, and you'll see it work as expected when not a transaction
    // await db.execute(
    //   '''
    //         INSERT OR REPLACE INTO workouts (
    //           id,
    //           name,
    //           notes,
    //           circuits,
    //           completed,
    //           start_time,
    //           end_time,
    //           state,
    //           phase_id,
    //           template_id)
    //         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    //         RETURNING *
    //       ''',
    //   w.toSQLParams(),
    // );

    // await db.executeBatch(
    //   'DELETE FROM workout_items WHERE id = ? RETURNING *',
    //   [
    //     ['abcd'],
    //   ],
    // );

    log.i('starting transaction');
    await db.writeTransaction((txn) async {
      await txn.execute(
        '''
            INSERT OR REPLACE INTO workouts (
              id,
              name,
              notes,
              circuits,
              completed,
              start_time,
              end_time,
              state,
              phase_id,
              template_id)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            RETURNING *
          ''',
        w.toSQLParams(),
      );

      //TODO: To keep this minimal, I only included one extra statement. The rest are lacking the schema / models to make them work.
      // they are left here commented for reference on what I'm trying to do.

      // await txn.executeBatch(
      //   'INSERT OR REPLACE INTO workout_items (id, "index", name, selected_index, circuit_node, tracking_fields, weight_unit, progression_name, workout_id) VALUES (?,?,?,?,?,?,?,?,?) RETURNING *',
      //   uItems,
      // );

      await txn.executeBatch(
        'DELETE FROM workout_items WHERE id = ? RETURNING *',
        [
          ['abcd'],
        ],
      );
      // await txn.executeBatch(
      //   'INSERT OR REPLACE INTO sets (id, "index", set_type, exercise_id, completed, workout_item_id, workout_id, workout_template_id, reps, kg, seconds, cm, rpe, rir, note) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) RETURNING *',
      //   uSets,
      // );

      // await txn.executeBatch(
      //   'DELETE FROM sets WHERE id = ? RETURNING *',
      //   dSets,
      // );

      // await txn.executeBatch(
      //   'INSERT OR REPLACE INTO notes (id, "index", note, workout_id, workout_item_id) VALUES (?,?,?,?,?) RETURNING *',
      //   uNotes,
      // );

      // await txn.executeBatch(
      //   'DELETE FROM notes WHERE id = ? RETURNING *',
      //   dNotes,
      // );

      // await txn.executeBatch(
      //   'INSERT OR REPLACE INTO workout_item_exercises (id, "index", exercise, workout_item_id, workout_id) VALUES (?,?,?,?,?) RETURNING *',
      //   uExercises,
      // );

      // await txn.executeBatch(
      //   'DELETE FROM workout_item_exercises WHERE id = ? RETURNING *',
      //   dExercises,
      // );
      log.i('finished transaction');
    });
    log.i('finished transaction function');
    print('debug: ${await db.getAll('SELECT workouts.name FROM workouts')}');
  }
}
