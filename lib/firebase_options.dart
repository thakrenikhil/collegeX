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
    apiKey: 'AIzaSyD0HGnBM9t9K_xbxtapFjtEvd3EbhRrxqA',
    appId: '1:661704745949:web:be7e927e1bf94d24374c34',
    messagingSenderId: '661704745949',
    projectId: 'collagex-61af8',
    authDomain: 'collagex-61af8.firebaseapp.com',
    storageBucket: 'collagex-61af8.appspot.com',
    measurementId: 'G-HGRW24C09K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqXkEzwXXz1Cfu9jfgPiEUuxbJWgD5ZQo',
    appId: '1:661704745949:android:6414c3777286591b374c34',
    messagingSenderId: '661704745949',
    projectId: 'collagex-61af8',
    storageBucket: 'collagex-61af8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQp4WaNtA-4v6X5kJVIO2A0RRvooIXMjs',
    appId: '1:661704745949:ios:d55e0a6664df8311374c34',
    messagingSenderId: '661704745949',
    projectId: 'collagex-61af8',
    storageBucket: 'collagex-61af8.appspot.com',
    iosBundleId: 'com.example.collegex',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQp4WaNtA-4v6X5kJVIO2A0RRvooIXMjs',
    appId: '1:661704745949:ios:f0a9e3eee2742de6374c34',
    messagingSenderId: '661704745949',
    projectId: 'collagex-61af8',
    storageBucket: 'collagex-61af8.appspot.com',
    iosBundleId: 'com.example.collegex.RunnerTests',
  );
}
