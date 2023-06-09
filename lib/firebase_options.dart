// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:firebase_core/firebase_core.dart';

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
//import 'firebase_options.dart';

// /// // ...

//  await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//  );

/// ```
///
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
    apiKey: 'AIzaSyBn1jUpxWGRCDqULNwoeqU6n6QRzCHovY0',
    appId: '1:675818629125:web:a389acc5d26d2cc462146c',
    messagingSenderId: '675818629125',
    projectId: 'androidoutfit',
    authDomain: 'androidoutfit.firebaseapp.com',
    storageBucket: 'androidoutfit.appspot.com',
    measurementId: 'G-KVKBVVZGXE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7jvsKGwwojXbG0K3qJJEgoovZiuVim-k',
    appId: '1:675818629125:android:6f4bb7657efbb3e562146c',
    messagingSenderId: '675818629125',
    projectId: 'androidoutfit',
    storageBucket: 'androidoutfit.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZn-F9lG0QTtTQu2aI1Gjnyv5XY_seE9Y',
    appId: '1:675818629125:ios:6254fdcb0f67935b62146c',
    messagingSenderId: '675818629125',
    projectId: 'androidoutfit',
    storageBucket: 'androidoutfit.appspot.com',
    iosClientId:
        '675818629125-6qoikh8umf1rdenm69jqdc317ufe9jdt.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterOutfit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZn-F9lG0QTtTQu2aI1Gjnyv5XY_seE9Y',
    appId: '1:675818629125:ios:088eda6a1327ede262146c',
    messagingSenderId: '675818629125',
    projectId: 'androidoutfit',
    storageBucket: 'androidoutfit.appspot.com',
    iosClientId:
        '675818629125-ffdapc7shnseaatj08difidvjkkggm44.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterOutfit.RunnerTests',
  );
}
