import 'package:flutter/material.dart';
import 'package:projet/Authentification/login.dart';
import 'package:projet/Authentification/pageentreloginetregister.dart';
import 'package:projet/Authentification/register.dart';
import 'package:projet/Authentification/splash.dart';
import 'package:projet/Firebase/firebaseinitial.dart';
import 'package:projet/Pages/Aproposuniversite.dart';
import 'package:projet/Pages/FiliereUniversite.dart';
import 'package:projet/Pages/Historiqueuniversite.dart';
// import 'package:projet/Pages/HomePage.dart';
import 'package:projet/Pages/DetailUniversite.dart';
import 'package:projet/Pages/HomePage.dart';
import 'package:projet/services/listmail.dart';

// import 'Api/screens/home_screen.dart';
// import 'Pages/BackPage.dart';
// import 'apprendreapi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          'pageregisterlogin': (context) => const Homepageito(),
          //"/":(context) =>const TestApi(),
          //"homepage":(context) =>const HomeScreen(),
          //"homepage":(context) =>TestApi(),
          "homepage": (context) => HomePage(),
          //"homepage": (context) =>const BackPage(),
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
