import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet/Authentification/login.dart';
import 'package:projet/Authentification/register.dart';
import 'package:projet/Authentification/splash.dart';
import 'package:projet/Pages/Aproposuniversite.dart';
import 'package:projet/Pages/FiliereUniversite.dart';
import 'package:projet/Pages/Historiqueuniversite.dart';
// import 'package:projet/Pages/HomePage.dart';
import 'package:projet/Pages/DetailUniversite.dart';
import 'package:projet/Pages/HomePage.dart';
import 'package:projet/services/listmail.dart';
import 'package:projet/services/sharedpref_authentification.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final searchBarTec = TextEditingController();
  SharedPreferencesService? service;
  @override
  void initState() {
    initSharedPreferences();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  initSharedPreferences() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    service = SharedPreferencesService(sharedPreferences);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        routes: {
          "homepage": (context) => HomePage(),
          '/login': (context) => const Login(),
          '/register': (context) => const Register(),
          "/": (context) => const Splash(),

          // "/": (context) => AuthScreen(),
          "aproposuniversitePage": (context) => const Aproposuniversite(),
          "listUniversite": (context) => const MoviePage(),
          "filierePage": (context) => const FiliereUniversite(),
          "historiquePage": (context) => const HistoriqueUniversite(),
          "maillist": (context) => const AffichageMail(),
          // "/": (context) => HomePage(),
        });
  }
}
