import 'package:flutter/material.dart';
import 'package:rypt/src/ui/screens/exercises/exercises_screen.dart';
import 'package:rypt/src/ui/themes.dart';

void main() {
  runApp(const Rypt());
}

/// The main entry point for the app.
class Rypt extends StatelessWidget {
  /// Creates a new [Rypt].
  const Rypt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rypt',
      theme: primaryTheme,
      home: const ExercisesScreen(),
    );
  }
}
