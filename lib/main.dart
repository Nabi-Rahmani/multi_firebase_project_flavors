import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_firebase_project_flavors/app.dart';

Future<void> runMainApp({required FirebaseOptions firebaseOptions}) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const App(),
  );
}
