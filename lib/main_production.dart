import 'package:calme_mobile/app/app.dart';
import 'package:calme_mobile/bootstrap.dart';
import 'package:calme_mobile/database/shared_preferences_service.dart';
import 'package:calme_mobile/firebase_options.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:health/health.dart';

void main() async {
  await setup();
  await bootstrap(() => const App());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Injector.init();
  await Injector.instance.allReady();
  await SharedPreferencesService.init();
  await Health().configure();
  await dotenv.load();
}
