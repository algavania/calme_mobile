import 'package:calme_mobile/app/app.dart';
import 'package:calme_mobile/bootstrap.dart';
import 'package:calme_mobile/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await bootstrap(() => const App());
}
