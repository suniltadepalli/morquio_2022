// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'morquio_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterfire_ui/auth.dart';
import 'firebase_options.dart';
import 'package:morquio_2022/screens/authgate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterFireUIAuth.configureProviders([
    const EmailProviderConfiguration(),
    const GoogleProviderConfiguration(
        clientId:
            '874545099818-7dcbegi6mjc2poqsq2m8hvpckg3uqjl4.apps.googleusercontent.com'),
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = MorquioTheme.light();

    return MaterialApp(
      theme: theme,
      home: AuthGate(),
    );
  }
}
