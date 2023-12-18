import 'package:flutter/material.dart';
// import 'package:projet/widgets/CustomNavBar.dart';
import 'package:projet/widgets/PublicationUniversite.dart';
import 'package:projet/widgets/ListUniversite.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Menu> menu = [
    Menu(const Icon(Icons.home)),
    Menu(const Icon(Icons.menu))
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
                color: Colors.green),
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
              indicatorColor: Colors.green,
              labelColor: Colors.green,
              tabs: mytabs()),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 223, 231),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                const Icon(
                  Icons.search,
                  color: Color.fromARGB(77, 9, 9, 9),
                  size: 30,
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(left: 5),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search  ",
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const ListUniversite(),
            const SizedBox(
              height: 30,
            ),
            FriendPost(
                proPic: 'assets/image4.jpg',
                proName: 'Université d Antananarivo ',
                dateAndLocation: 'yesterday at 12:00 AM - Madagascar',
                comments: 'Commentaire 400',
                like: '1K',
                post: 'assets/image4.jpg',
                caption: ''),
            FriendPost(
                proPic: 'assets/image3.jpg',
                proName: 'Ecole Nationale d  Informatique',
                dateAndLocation: 'yesterday at 12:00 AM - Madagascar',
                comments: 'Commentaire 400',
                like: '1K',
                post: 'assets/image3.jpg',
                caption: ' Logo'),
            FriendPost(
                proPic: 'assets/logoispm.jpg',
                proName: 'Institut Supérieur Polytéchnique de Madagascar ',
                dateAndLocation: 'yesterday',
                comments: 'Commentaire 1K',
                like: '20K',
                post: 'assets/pdcispm.png',
                caption: 'Inscription ouverte'),
            FriendPost(
                proPic: 'assets/logoitu.jpg',
                proName: 'ITU',
                dateAndLocation: 'yesterday at 12:00 AM - Madagascar',
                comments: 'Commentaire 400',
                like: '1K',
                post: 'assets/logoitu.jpg',
                caption: ' Bonjour'),
          ]),
        )),
        // bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}

class Menu {
  Icon icons;
  Menu(this.icons);
}
