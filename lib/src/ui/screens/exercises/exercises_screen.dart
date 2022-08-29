import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rypt/src/data/local/shared_objects.dart';
import 'package:rypt/src/ui/screens/exercises/exercises_list.dart';
import 'package:shared_objects/shared_objects.dart';

/// A screen that shows a list of exercises.
class ExercisesScreen extends StatefulWidget {
  /// Creates a new [ExercisesScreen].
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  late final _exercisesNames = context
      .select<SharedObjects, SharedStringList>((value) => value.exercisesNames);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      body: FutureBuilder(
        future: _exercisesNames.getOrElse(() => []),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final exercisesNames = snapshot.data! as List<String>;
            return ExercisesList(exercisesNames: exercisesNames);
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
