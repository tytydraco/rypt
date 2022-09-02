import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rypt/firebase_options.dart';
import 'package:rypt/src/data/local/shared_objects.dart';
import 'package:rypt/src/ui/screens/login/login_screen.dart';
import 'package:rypt/src/ui/themes.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Rypt());
}

/// The main entry point for the app.
class Rypt extends StatelessWidget {
  /// Creates a new [Rypt].
  const Rypt({super.key});

  @override
  Widget build(BuildContext context) {
    final _sharedObjects = SharedObjects();

    // Set some testing values.
    _sharedObjects.exercisesNames.set([
      'Bench press',
      'Overhead Press',
      'Squat',
      'Deadlift',
      'Bent over row',
      'Bicep curl',
      'Tricep extension',
      'Romanian deadlift',
      'Lateral raise',
    ]);

    return Provider.value(
      value: _sharedObjects,
      child: MaterialApp(
        title: 'Rypt',
        theme: primaryTheme,
        home: const LoginScreen(),
      ),
    );
  }
}
