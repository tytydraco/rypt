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
    apiKey: 'AIzaSyCK9EB5I96IQmfgiW2szLLM7mJRyaie8sk',
    appId: '1:776026793185:web:13d4a92ff39f40fbb103a0',
    messagingSenderId: '776026793185',
    projectId: 'rypt-7a8e5',
    authDomain: 'rypt-7a8e5.firebaseapp.com',
    storageBucket: 'rypt-7a8e5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJeOzzOHb-hGLvNMyjrvIFj970Xj8aoZ4',
    appId: '1:776026793185:android:ab58a4cf8fc14cafb103a0',
    messagingSenderId: '776026793185',
    projectId: 'rypt-7a8e5',
    storageBucket: 'rypt-7a8e5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4teB4mkmt5h9JsTLp-a4CVsSxKI9ueyM',
    appId: '1:776026793185:ios:89c439f13af1eceeb103a0',
    messagingSenderId: '776026793185',
    projectId: 'rypt-7a8e5',
    storageBucket: 'rypt-7a8e5.appspot.com',
    iosClientId: '776026793185-dttijlejag29mtnetfhmqel4gskmfj2a.apps.googleusercontent.com',
    iosBundleId: 'com.draco.rypt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4teB4mkmt5h9JsTLp-a4CVsSxKI9ueyM',
    appId: '1:776026793185:ios:89c439f13af1eceeb103a0',
    messagingSenderId: '776026793185',
    projectId: 'rypt-7a8e5',
    storageBucket: 'rypt-7a8e5.appspot.com',
    iosClientId: '776026793185-dttijlejag29mtnetfhmqel4gskmfj2a.apps.googleusercontent.com',
    iosBundleId: 'com.draco.rypt',
  );
}
