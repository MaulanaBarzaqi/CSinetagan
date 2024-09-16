// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyC9kES08Ox_n4QFulgAlhPdEOwjtkHEEKk',
    appId: '1:427325503843:web:02997763f5cc6640717b56',
    messagingSenderId: '427325503843',
    projectId: 'inetagan-6ec3f',
    authDomain: 'inetagan-6ec3f.firebaseapp.com',
    storageBucket: 'inetagan-6ec3f.appspot.com',
    measurementId: 'G-LQ9KTGN1G1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDWx0j5BKiRFm_ZSNeQxANgRssbHW2QWg',
    appId: '1:427325503843:android:2ec010236f1f761e717b56',
    messagingSenderId: '427325503843',
    projectId: 'inetagan-6ec3f',
    storageBucket: 'inetagan-6ec3f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6G5hGai5lcpbHuF94vHQdwYK-BWf_vxc',
    appId: '1:427325503843:ios:2b906c982e4d13d4717b56',
    messagingSenderId: '427325503843',
    projectId: 'inetagan-6ec3f',
    storageBucket: 'inetagan-6ec3f.appspot.com',
    iosBundleId: 'com.example.csinetagan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6G5hGai5lcpbHuF94vHQdwYK-BWf_vxc',
    appId: '1:427325503843:ios:2b906c982e4d13d4717b56',
    messagingSenderId: '427325503843',
    projectId: 'inetagan-6ec3f',
    storageBucket: 'inetagan-6ec3f.appspot.com',
    iosBundleId: 'com.example.csinetagan',
  );
}
