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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8_ce_i5RhZ6uz3_cR0f1MWtQHrdrADxI',
    appId: '1:880074737907:android:f5ceaa052651b352310f86',
    messagingSenderId: '880074737907',
    projectId: 'restaurantstaff-184ed',
    storageBucket: 'restaurantstaff-184ed.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8Igj3cu5UlVEyHJk42tssixn7JWqBaNw',
    appId: '1:880074737907:ios:b6e3ef3a7e1874c2310f86',
    messagingSenderId: '880074737907',
    projectId: 'restaurantstaff-184ed',
    storageBucket: 'restaurantstaff-184ed.appspot.com',
    androidClientId: '880074737907-e4uhncsd5mc7qmra1stmc3b982v6o2op.apps.googleusercontent.com',
    iosClientId: '880074737907-vp94l77mv0r33uavd6vln6fg8pkbfpkg.apps.googleusercontent.com',
    iosBundleId: 'manolo.restaurantstaff',
  );
}
