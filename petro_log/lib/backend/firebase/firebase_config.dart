import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBOKmAqoISlm01fpdbiY-bbWZnEiSbrtnI",
            authDomain: "petro-log-xflogn.firebaseapp.com",
            projectId: "petro-log-xflogn",
            storageBucket: "petro-log-xflogn.firebasestorage.app",
            messagingSenderId: "698641367025",
            appId: "1:698641367025:web:ed0f75751a4d9b03434e50"));
  } else {
    await Firebase.initializeApp();
  }
}
