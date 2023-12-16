import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet/Pages/CategoryPage.dart';
import 'package:projet/Pages/HomePage.dart';
import 'package:projet/Pages/DetailUniversite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
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
          "categoryPage": (context) => const CategoryPage(),
          "moviePage": (context) => MoviePage(),
          // "/": (context) => HomePage(),
        });
  }
}
