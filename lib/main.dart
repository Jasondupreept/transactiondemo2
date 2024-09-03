import 'dart:async';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Workout> _workouts = [];
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    final stream =
        PowersyncWorkoutRepository.streamWorkouts(WorkoutState.template);
    _subscription = stream.listen((workouts) {
      setState(() {
        _workouts = workouts;
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            FilledButton.icon(
              onPressed: () => PowersyncWorkoutRepository.updateWorkout(),
              label: const Text('New Workout'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: ListView(
          children: _workouts.map((wo) => Text(wo.name)).toList(),
        )
        // body: StreamBuilder(
        //     stream:
        //         PowersyncWorkoutRepository.streamWorkouts(WorkoutState.template),
        //     builder: (context, snapshot) {
        //       if (snapshot.hasData) {
        //         return ListView.builder(
        //           itemCount: snapshot.data!.length,
        //           itemBuilder: (context, index) {
        //             return Text(snapshot.data![index].name);
        //           },
        //         );
        //       } else {
        //         return const Center(child: CircularProgressIndicator());
        //       }
        //     }),
        );
  }
}
