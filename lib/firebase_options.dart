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
    apiKey: 'AIzaSyBzvA5W_A-pIIPZtbqTXswQ5Ht-zJh3GrE',
    appId: '1:753022440422:web:ed033924530336b96bfc27',
    messagingSenderId: '753022440422',
    projectId: 'lapor-book-12553-fe620',
    authDomain: 'lapor-book-12553-fe620.firebaseapp.com',
    storageBucket: 'lapor-book-12553-fe620.appspot.com',
    measurementId: 'G-E038Z92ZB5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpvZPCIdmWGxVPofp-53Y3XLB4y1GUb54',
    appId: '1:753022440422:android:f7216f5a5e4e99e46bfc27',
    messagingSenderId: '753022440422',
    projectId: 'lapor-book-12553-fe620',
    storageBucket: 'lapor-book-12553-fe620.appspot.com',
  );
}
