import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBuUg_4W75-Rc3PwyIltM_4HfdF3kkqhRU",
            authDomain: "tag3-46b31c.firebaseapp.com",
            projectId: "tag3-46b31c",
            storageBucket: "tag3-46b31c.appspot.com",
            messagingSenderId: "555248158579",
            appId: "1:555248158579:web:54e3fc45d07c46ff4ba706"));
  } else {
    await Firebase.initializeApp();
  }
}
