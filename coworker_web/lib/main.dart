import 'package:coworker_web/routes/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCRQFGUtJtNdYFSf4FDGWwn7zzKV3TuFlk",
      authDomain: "coworker-fb5bd.firebaseapp.com",
      databaseURL: "https://coworker-fb5bd-default-rtdb.firebaseio.com",
      projectId: "coworker-fb5bd",
      storageBucket: "coworker-fb5bd.firebasestorage.app",
      messagingSenderId: "227929040712",
      appId: "1:227929040712:web:eed8a3e7b75b98dfa2757d",
      measurementId: "G-HMJXYJBLD5",
    ),
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: routes,
    );
  }
}
