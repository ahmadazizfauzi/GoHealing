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
    apiKey: 'AIzaSyCOcBQsi9eZOEMfN9uV4NW4QepxJ55i-XE',
    appId: '1:97033622378:web:b7fc1d37cd43429c120b13',
    messagingSenderId: '97033622378',
    projectId: 'gohealing-d35b5',
    authDomain: 'gohealing-d35b5.firebaseapp.com',
    storageBucket: 'gohealing-d35b5.appspot.com',
    measurementId: 'G-R4F58N9KX1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZZW0h7S2vcFbRF1qM0AXgzT6PmYmCwsE',
    appId: '1:97033622378:android:6070571dc9da40a1120b13',
    messagingSenderId: '97033622378',
    projectId: 'gohealing-d35b5',
    storageBucket: 'gohealing-d35b5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpSQLCpZWYTZq_58SOFa25HvLxf6ZoJ4g',
    appId: '1:97033622378:ios:1d68320cb83e919b120b13',
    messagingSenderId: '97033622378',
    projectId: 'gohealing-d35b5',
    storageBucket: 'gohealing-d35b5.appspot.com',
    iosBundleId: 'com.example.gohealing',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpSQLCpZWYTZq_58SOFa25HvLxf6ZoJ4g',
    appId: '1:97033622378:ios:0d9baa252a568543120b13',
    messagingSenderId: '97033622378',
    projectId: 'gohealing-d35b5',
    storageBucket: 'gohealing-d35b5.appspot.com',
    iosBundleId: 'com.example.gohealing.RunnerTests',
  );
}
