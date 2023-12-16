import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  List<Menutsika> menupage = [
    Menutsika("Publication", const Icon(Icons.home)),
    Menutsika("A Propos", const Icon(Icons.notifications))
  ];
  mytabs() {
    return menupage
        .map((e) => Tab(
              text: e.nom,
              icon: e.icons,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: menupage.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              unselectedLabelColor: Colors.black54,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: mytabs()),
        ),
      ),
    );
  }
}

class Menutsika {
  String nom;
  Icon icons;
  Menutsika(this.nom, this.icons);
}
