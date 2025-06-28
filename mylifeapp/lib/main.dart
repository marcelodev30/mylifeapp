import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mylifeapp/app.dart';
import 'package:mylifeapp/firebase_options.dart';

import 'core/config/injector_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupInjector();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}
