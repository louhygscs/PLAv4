import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDrbsbCY10oRs-WNx776sSvoEDcZuKgEM4",
            authDomain: "p-l-av4-fn879e.firebaseapp.com",
            projectId: "p-l-av4-fn879e",
            storageBucket: "p-l-av4-fn879e.appspot.com",
            messagingSenderId: "550551647499",
            appId: "1:550551647499:web:741ff9280a1c4232b2de0e"));
  } else {
    await Firebase.initializeApp();
  }
}
