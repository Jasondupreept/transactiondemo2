import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transactiondemo/auth/auth_checker.dart';
import 'package:transactiondemo/models/workout.dart';
import 'package:transactiondemo/powersync.dart';
import 'package:transactiondemo/powersync_repository.dart';

Future<void> main() async {
  await openDatabase();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthChecker(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        actions: [
          FilledButton.icon(
            onPressed: () => PowersyncWorkoutRepository.updateWorkout(),
            label: const Text('New Workout'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder(
          stream:
              PowersyncWorkoutRepository.streamWorkouts(WorkoutState.template),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Text(snapshot.data![index].name);
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
