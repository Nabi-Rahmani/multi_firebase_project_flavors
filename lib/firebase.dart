import 'package:firebase_core/firebase_core.dart';
import 'package:multi_firebase_project_flavors/flavors.dart';
import 'package:multi_firebase_project_flavors/firebase_options_prod.dart'
    as prod;
import 'package:multi_firebase_project_flavors/firebase_options_prod.dart'
    as stg;
import 'package:multi_firebase_project_flavors/firebase_options_prod.dart'
    as dev;

Future<void> initializeFirebaseApp() async {
  // Try to delete existing default app if it exists
  try {
    await Firebase.app('[DEFAULT]').delete();
  } catch (e) {
    // Ignore error if no default app exists
  }

  // Select Firebase options based on flavor using switch expression
  final firebaseOptions = switch (getFlavor()) {
    Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
    Flavor.stg => stg.DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  // Initialize Firebase with the selected options
  await Firebase.initializeApp(options: firebaseOptions);
}
