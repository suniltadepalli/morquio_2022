// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA5_Ys2Ff2d95Enx8BoCUbs8iV1Eoqh5iU',
    appId: '1:874545099818:web:dddf89055b773285e93f53',
    messagingSenderId: '874545099818',
    projectId: 'morquio-2022-be0d3',
    authDomain: 'morquio-2022-be0d3.firebaseapp.com',
    storageBucket: 'morquio-2022-be0d3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuFDWc5Qrw3yqEpgUZg1ckDknT2KpGTEM',
    appId: '1:874545099818:android:a1ce6017fcf1c57ce93f53',
    messagingSenderId: '874545099818',
    projectId: 'morquio-2022-be0d3',
    storageBucket: 'morquio-2022-be0d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTMG7L9LXja_E-Y3nGSXYdVeFLGGS64Fw',
    appId: '1:874545099818:ios:d605beccb93d73c1e93f53',
    messagingSenderId: '874545099818',
    projectId: 'morquio-2022-be0d3',
    storageBucket: 'morquio-2022-be0d3.appspot.com',
    iosClientId: '874545099818-gj9j17ofrufau1fb96bd5s5190kv4do0.apps.googleusercontent.com',
    iosBundleId: 'com.example.morquio2022',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTMG7L9LXja_E-Y3nGSXYdVeFLGGS64Fw',
    appId: '1:874545099818:ios:d605beccb93d73c1e93f53',
    messagingSenderId: '874545099818',
    projectId: 'morquio-2022-be0d3',
    storageBucket: 'morquio-2022-be0d3.appspot.com',
    iosClientId: '874545099818-gj9j17ofrufau1fb96bd5s5190kv4do0.apps.googleusercontent.com',
    iosBundleId: 'com.example.morquio2022',
  );
}