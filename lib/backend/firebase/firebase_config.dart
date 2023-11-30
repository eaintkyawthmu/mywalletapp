import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD9H1Kp10PrnYf2tS_GxyYmS0EB3lMFqSo",
            authDomain: "mywallet-3000.firebaseapp.com",
            projectId: "mywallet-3000",
            storageBucket: "mywallet-3000.appspot.com",
            messagingSenderId: "528534326247",
            appId: "1:528534326247:web:a1f9aa1bbbd77379638b42",
            measurementId: "G-QJ3ENFZTV4"));
  } else {
    await Firebase.initializeApp();
  }
}
