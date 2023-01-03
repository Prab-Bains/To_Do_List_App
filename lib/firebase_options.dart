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
    apiKey: 'AIzaSyDGvZa2iKdeDIcUMNnqs9jaBun3Eb2bo3s',
    appId: '1:771092298995:android:bde8ed0a0433ab8b27cb86',
    messagingSenderId: '771092298995',
    projectId: 'to-do-list-2-858a9',
    storageBucket: 'to-do-list-2-858a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVT9NjY2jXACs_0__gkFIXrj_FxRH3WEY',
    appId: '1:771092298995:ios:75a3790c4551f25827cb86',
    messagingSenderId: '771092298995',
    projectId: 'to-do-list-2-858a9',
    storageBucket: 'to-do-list-2-858a9.appspot.com',
    androidClientId: '771092298995-nffd7p0c5m8ie8if4g758nbi4fkef8k6.apps.googleusercontent.com',
    iosClientId: '771092298995-3rp05nbhaeq2l7u1nf4d9pgarp8d92nr.apps.googleusercontent.com',
    iosBundleId: 'com.example.updatedToDoList',
  );
}
