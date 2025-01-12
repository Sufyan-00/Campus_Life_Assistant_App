import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDTDZMdNAAScXr0Ep8GoWASkCqHluqCKNc",
            authDomain: "campus-life-assistant-km75h9.firebaseapp.com",
            projectId: "campus-life-assistant-km75h9",
            storageBucket: "campus-life-assistant-km75h9.firebasestorage.app",
            messagingSenderId: "1079305847499",
            appId: "1:1079305847499:web:9594f9a535263bc2fcd14e"));
  } else {
    await Firebase.initializeApp();
  }
}
