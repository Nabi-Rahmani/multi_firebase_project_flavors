import 'package:multi_firebase_project_flavors/firebase_options_prod.dart';
import 'package:multi_firebase_project_flavors/main.dart';

Future<void> main() async {
  await runMainApp(firebaseOptions: DefaultFirebaseOptions.currentPlatform);
}
