// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB-KNF1049JHSsBMIkAiD2LlLYECDIuqJA',
    appId: '1:257851176015:web:2c809d027989e38719e63a',
    messagingSenderId: '257851176015',
    projectId: 'medicine-app-ac718',
    authDomain: 'medicine-app-ac718.firebaseapp.com',
    storageBucket: 'medicine-app-ac718.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDH4snnjf2dsX6-Evh_kGBzYLH5JlMozEc',
    appId: '1:257851176015:android:74d37fb3beb36f8a19e63a',
    messagingSenderId: '257851176015',
    projectId: 'medicine-app-ac718',
    storageBucket: 'medicine-app-ac718.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAazVgG5wOJggqdUkCvn08-K6suRYSu1CQ',
    appId: '1:257851176015:ios:89cfd35f64ce63b619e63a',
    messagingSenderId: '257851176015',
    projectId: 'medicine-app-ac718',
    storageBucket: 'medicine-app-ac718.appspot.com',
    iosBundleId: 'com.example.pill',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAazVgG5wOJggqdUkCvn08-K6suRYSu1CQ',
    appId: '1:257851176015:ios:d7ab4f75b92cd16d19e63a',
    messagingSenderId: '257851176015',
    projectId: 'medicine-app-ac718',
    storageBucket: 'medicine-app-ac718.appspot.com',
    iosBundleId: 'com.example.pill.RunnerTests',
  );
}
