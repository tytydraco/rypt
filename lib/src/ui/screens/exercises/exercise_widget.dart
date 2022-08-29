import 'package:flutter/material.dart';

/// A clickable widget that displays an exercise.
class ExerciseWidget extends StatelessWidget {
  /// Creates a new [ExerciseWidget].
  const ExerciseWidget({
    super.key,
    required this.name,
  });

  /// The name of the exercise.
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(name),
    );
  }
}
