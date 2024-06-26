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
    apiKey: 'AIzaSyD-nlzv21cwhjOIHz0H0wgWnfgw3I_4mNA',
    appId: '1:1039191439724:web:eee8f124c18ad7f0d91b49',
    messagingSenderId: '1039191439724',
    projectId: 'bukutamu-33cd3',
    authDomain: 'bukutamu-33cd3.firebaseapp.com',
    storageBucket: 'bukutamu-33cd3.appspot.com',
    measurementId: 'G-Y4QPWH7G1B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVYmgAb5wRcfURT5Suz9ZGyfQtJOb9ldg',
    appId: '1:1039191439724:android:eeb39f1cc4cfad90d91b49',
    messagingSenderId: '1039191439724',
    projectId: 'bukutamu-33cd3',
    storageBucket: 'bukutamu-33cd3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDd2z4m8TQB6R3wDvpUEv9QI3Sgue1aM1M',
    appId: '1:1039191439724:ios:c0c5afa8a9d90174d91b49',
    messagingSenderId: '1039191439724',
    projectId: 'bukutamu-33cd3',
    storageBucket: 'bukutamu-33cd3.appspot.com',
    iosBundleId: 'com.example.cobaFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDd2z4m8TQB6R3wDvpUEv9QI3Sgue1aM1M',
    appId: '1:1039191439724:ios:7f5a43f771abe998d91b49',
    messagingSenderId: '1039191439724',
    projectId: 'bukutamu-33cd3',
    storageBucket: 'bukutamu-33cd3.appspot.com',
    iosBundleId: 'com.example.cobaFlutter.RunnerTests',
  );
}
