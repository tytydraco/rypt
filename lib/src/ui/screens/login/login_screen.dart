import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:rypt/src/ui/screens/exercises/exercises_screen.dart';

/// A screen responsible for handling user authentication.
class LoginScreen extends StatefulWidget {
  /// Creates a new [LoginScreen].
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> _proceed() async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(builder: (context) => const ExercisesScreen()),
    );
  }

  Future<String?> _onLogin(LoginData loginData) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: loginData.name,
        password: loginData.password,
      );

      await _proceed();
    } on FirebaseAuthException catch (e) {
      stderr.writeln(e);
      return 'Incorrect email or password.';
    }

    return null;
  }

  Future<String?> _onSignup(SignupData signupData) async {
    if (signupData.name == null || signupData.password == null) {
      return 'Invalid email or password';
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: signupData.name!,
        password: signupData.password!,
      );

      await _proceed();
    } on FirebaseAuthException catch (e) {
      stderr.writeln(e);
      switch (e.code) {
        case 'email-already-in-use':
          return 'Email is already in use.';
        case 'weak-password':
          return 'Password is too weak.';
        default:
          return 'Unable to create user.';
      }
    }

    return null;
  }

  Future<String?> _onRecoverPassword(String name) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: name);
    } on FirebaseAuthException catch (e) {
      stderr.writeln(e);
      switch (e.code) {
        case 'auth/user-not-found':
        case 'auth/invalid-email':
          return 'Invalid email address.';
        default:
          return 'Unable to reset password.';
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: FlutterLogin(
        title: 'rypt',
        onLogin: _onLogin,
        onSignup: _onSignup,
        onRecoverPassword: _onRecoverPassword,
      ),
    );
  }
}
