import 'package:flutter/material.dart';
import 'package:projet/widgets/Footerdetailuniversite.dart';
import 'package:projet/widgets/PublicationUniversite.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Institut Superieur Polytechnique de Mada',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData.fallback(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //PDP et PDC
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  child: photocouverture(),
                ),
                Positioned(
                  top: 130,
                  child: photoprofile(),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Institut Supérieur Polytéchnique de Madagascar',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),

            FriendPost(
                proPic: 'assets/logoispm.jpg',
                proName: 'Institut Supérieur Polytéchnique de Madagascar ',
                dateAndLocation: 'yesterday',
                comments: 'Commentaire 1K',
                like: '20K',
                post: 'assets/pdcispm.png',
                caption: 'Inscription ouverte'),
            FriendPost(
                proPic: 'assets/logoispm.jpg',
                proName: 'Institut Supérieur Polytéchnique de Madagascar ',
                dateAndLocation: 'yesterday',
                comments: 'Commentaire 1K',
                like: '20K',
                post: 'assets/pdcispm.png',
                caption: 'Inscription ouverte'), 
          ],
        ),
      ),

      // bottomSheet: const CustomNavBar(),
      bottomNavigationBar: const Footerdetailuniversite(),
    );
  }
}

//bouton kely

//Photo de couverture
Widget photocouverture() => Container(
      color: Colors.grey,
      child: Image.asset(
        'assets/pdcispm.png',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
//Photo de profile
Widget photoprofile() => Container(
      width: 150,
      height: 150,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        'assets/logoispm.jpg',
        fit: BoxFit.cover,
      ),
    );
