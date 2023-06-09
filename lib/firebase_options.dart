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
    apiKey: 'AIzaSyBekFx7WBsDIZM4SGcAF4J2StrpXb9IHO4',
    appId: '1:1079539167236:web:e49b28dcd6df784575c551',
    messagingSenderId: '1079539167236',
    projectId: 'whatsapp-backend-2dce7',
    authDomain: 'whatsapp-backend-2dce7.firebaseapp.com',
    storageBucket: 'whatsapp-backend-2dce7.appspot.com',
    measurementId: 'G-2RSW6M2HNR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArQ9OTfI3E4Bl6vux_c77VSKWTeWi6pMI',
    appId: '1:1079539167236:android:4a1382b09c5cd50675c551',
    messagingSenderId: '1079539167236',
    projectId: 'whatsapp-backend-2dce7',
    storageBucket: 'whatsapp-backend-2dce7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgobhfvX2pzavQKxI5mXyXgHcw6b2zk6Q',
    appId: '1:1079539167236:ios:fb1c5c974021a03675c551',
    messagingSenderId: '1079539167236',
    projectId: 'whatsapp-backend-2dce7',
    storageBucket: 'whatsapp-backend-2dce7.appspot.com',
    iosClientId: '1079539167236-6l07er5cpspa59asdqd6aos3h72aoseo.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappCloneFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgobhfvX2pzavQKxI5mXyXgHcw6b2zk6Q',
    appId: '1:1079539167236:ios:fb1c5c974021a03675c551',
    messagingSenderId: '1079539167236',
    projectId: 'whatsapp-backend-2dce7',
    storageBucket: 'whatsapp-backend-2dce7.appspot.com',
    iosClientId: '1079539167236-6l07er5cpspa59asdqd6aos3h72aoseo.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappCloneFlutter',
  );
}
