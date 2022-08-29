import 'package:flutter/material.dart';

/// A screen that shows a list of exercises.
class ExercisesScreen extends StatefulWidget {
  /// Creates a new [ExercisesScreen].
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      body: Container(),
    );
  }
}
