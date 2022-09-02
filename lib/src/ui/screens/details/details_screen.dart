import 'package:flutter/material.dart';

/// A screen that shows the specific details of an exercise.
class DetailsScreen extends StatefulWidget {
  /// Creates a new [DetailsScreen] given an [exerciseName].
  const DetailsScreen({
    super.key,
    required this.exerciseName,
  });

  /// The name of the exercise.
  final String exerciseName;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.exerciseName),
      ),
      body: Container(),
    );
  }
}
