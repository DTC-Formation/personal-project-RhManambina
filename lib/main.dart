import 'package:flutter/material.dart';
import 'package:projet/Tabs/home.dart';
// import 'package:projet/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Facebook Clone',
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List<Menu> menufacebook = [
    Menu(const Icon(Icons.home)),
    Menu(const Icon(Icons.group)),
    Menu(const Icon(Icons.ondemand_video)),
    Menu(const Icon(Icons.notifications_none)),
    Menu(const Icon(Icons.menu)),
  ];
  mytabs() {
    return menufacebook
        .map((e) => Tab(
              icon: e.icons,
            ))
        .toList();
  }

  @override
  //build(mandray parametre context)
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: menufacebook.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'facebook',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message,
                  color: Colors.black,
                )),
          ],
          //TabBar
          bottom: TabBar(
              unselectedLabelColor: Colors.black54,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: mytabs()),
        ),
        //TabBar View
        body: const TabBarView(children: <Widget>[
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ]),
      ),
    );
  }
}

class Menu {
  Icon icons;
  // String contenu;
  // Menu(this.icons, this.contenu);
  Menu(this.icons);
}
