import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAi91w1eUFJgoIqh_tQzJSMd0o2BZ3Fz3Q",
            authDomain: "uptimefleet-383db.firebaseapp.com",
            projectId: "uptimefleet-383db",
            storageBucket: "uptimefleet-383db.appspot.com",
            messagingSenderId: "510089801067",
            appId: "1:510089801067:web:dbdd5c2896e6594632702e",
            measurementId: "G-8HMZNFZ7CJ"));
  } else {
    await Firebase.initializeApp();
  }
}
