import 'package:flutter/material.dart';

import '../widgets/ListUniversite.dart';
import '../widgets/PublicationUniversite.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    proPic: 'as  sets/logoitu.jpg',
                    proName: 'ITU',
                    dateAndLocation: 'yesterday at 12:00 AM - Madagascar',
                    comments: 'Commentaire 400',
                    like: '1K',
                    post: 'assets/logoitu.jpg',
                    caption: ' Bonjour'),
              ]),
            ),
    );
  }
}
