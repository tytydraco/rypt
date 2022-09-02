import 'package:flutter/material.dart';
import 'package:rypt/src/ui/screens/details/details_screen.dart';

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
    return InkWell(
      child: Card(
        child: Text(name),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => DetailsScreen(exerciseName: name),
          ),
        );
      },
    );
  }
}
