import 'package:flutter/material.dart';

//import '../AdminPage/adminPage.dart';
import '../Api/screens/home_screen.dart';
//import '../Quiz/screen/accueil.dart';
import '../apprendreapi.dart';
import 'accueilpagetabbar.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Menu> menu = [
    Menu(const Icon(Icons.home)),
    Menu(const Icon(Icons.person)),
    Menu(const Icon(Icons.add)),
  ];

  HomePage({super.key});
  mytabs() {
    return menu
        .map((e) => Tab(
              icon: e.icons,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: menu.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 244, 245, 244),
          title: const Text(
            'E-hianatra',
            style: TextStyle(
                fontSize: 30.0,
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/image1.jpg",
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          ],
          //TabBar
          bottom: TabBar(
              unselectedLabelColor: Colors.black54,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: mytabs()),
        ),
        body: const TabBarView(
          children: <Widget>[
            AccueilPage(),
            //Quiz
            //Accueil(),
            TestApi(),
            HomeScreen(),
          ],
        ),
        // bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}

class Menu {
  Icon icons;
  Menu(this.icons);
}
