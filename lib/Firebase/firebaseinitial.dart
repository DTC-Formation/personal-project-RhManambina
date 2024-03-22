import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

// ignore: non_constant_identifier_names
Future<void> InitializeFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD4FnNm1wF_lnKYBZDKWMDUJXNOlHY7NwQ",
      authDomain: "projet-dtc.firebaseapp.com",
      projectId: "projet-dtc",
      storageBucket: "projet-dtc.appspot.com",
      messagingSenderId: "644891217332",
      appId: "1:644891217332:web:3d0c89d16065a5a29636e1",
      measurementId: "G-V16X3QV0HD",
      databaseURL:
          "https://projet-dtc-default-rtdb.asia-southeast1.firebasedatabase.app",
    ),
  );
  if (app != null) {
    print('Firebase a été initialisé avec succes');
  } else {
    print('Firebase a rencontrer une erreur de connexion');
  }
}
