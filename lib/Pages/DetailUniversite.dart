import 'package:flutter/material.dart';
import 'package:projet/widgets/CustomNavBar.dart';
import 'package:projet/widgets/DetailPageBouton.dart';
// import 'package:projet/widgets/PublicationUniversite.dart';

class MoviePage extends StatelessWidget {
  MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Institut Superieur Polytechnique de Mada',
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Stack(children: [
        Image.asset(
          "assets/pdcispm.png",
          height: 280,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        "assets/logoispm.jpg",
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 50, top: 70),
                      height: 60,
                      width: 60,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //Nom an'ilay Université
              const Text("Institut Supérieur Polytéchnique de Madagascar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),

              // FriendPost(
              //     proPic: 'assets/logoispm.jpg',
              //     proName: 'Institut Supérieur Polytéchnique de Madagascar ',
              //     dateAndLocation: 'yesterday',
              //     comments: 'Commentaire 1K',
              //     like: '20K',
              //     post: 'assets/image1.jpg',
              //     caption: 'Inscription ouverte'),
              // FriendPost(
              //     proPic: 'assets/logoispm.jpg',
              //     proName: 'Institut Supérieur Polytéchnique de Madagascar ',
              //     dateAndLocation: 'yesterday',
              //     comments: 'Commentaire 1K',
              //     like: '20K',
              //     post: 'assets/image1.jpg',
              //     caption: 'Inscription ouverte'),

              MoviePageButtons(),
            ],
          )),
        ),
      ]),
      // appBar: AppBar(
      //   bottom: TabBar(
      //       unselectedLabelColor: Colors.black54,
      //       indicatorColor: Colors.blue,
      //       labelColor: Colors.blue,
      //       tabs: mytabs()),
      // ),
      bottomSheet: CustomNavBar(),
      //  bottomNavigationBar: CustomNavBar(),
    );
  }
}
