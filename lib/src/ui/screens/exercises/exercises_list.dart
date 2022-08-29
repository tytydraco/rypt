import 'package:flutter/material.dart';
import 'package:rypt/src/ui/screens/exercises/exercise_widget.dart';

/// A scrolling list of exercises.
class ExercisesList extends StatelessWidget {
  /// Creates a new [ExercisesList] given a list of [exercisesNames].
  const ExercisesList({
    super.key,
    required this.exercisesNames,
  });

  /// A list of exercise names.
  final List<String> exercisesNames;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => ExerciseWidget(name: exercisesNames[index]),
    );
  }
}
