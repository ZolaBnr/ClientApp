import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled4/utils/firebase_options.dart';
import 'app.dart';
import 'common/data/repositories/authentification/authentification_repository.dart';


late Size mq;
Future<void> main() async {
  /// Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding
      .ensureInitialized();

  /// GetX Local Storage
  await GetStorage.init();

  /// Await Splash until other items Load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,)
      .then(
          (FirebaseApp value) => Get.put(AuthenticationRepository())//first instance
  );

  // Load all the Material Design / Themes / Localizations / Bindings
  runApp(const App());

}

