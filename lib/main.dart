import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet/Pages/Aproposuniversite.dart';
import 'package:projet/Pages/FiliereUniversite.dart';
import 'package:projet/Pages/Historiqueuniversite.dart';
import 'package:projet/Pages/HomePage.dart';
import 'package:projet/Pages/DetailUniversite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        routes: {
          "/": (context) => HomePage(),
          "aproposuniversitePage": (context) => const Aproposuniversite(),
          "listUniversite": (context) => const MoviePage(),
          "filierePage": (context) => const FiliereUniversite(),
          "historiquePage": (context) => const HistoriqueUniversite(),

          // "/": (context) => HomePage(),
        });
  }
}
