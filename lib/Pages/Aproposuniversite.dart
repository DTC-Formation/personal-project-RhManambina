import 'package:flutter/material.dart';
import 'package:projet/Pages/DetailUniversite.dart';

//import 'package:flutter_svg/svg.dart';
class Aproposuniversite extends StatelessWidget {
  const Aproposuniversite({super.key});

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
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const Center(
              child: Text(
                'A propos',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('A propos de nous'),
                  Text('A propos de nous A propos de nous A propos de nous'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Card(
                    child: Image.asset(
                      'assets/image1.jpg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Card(
                    child: Image.asset(
                      'assets/image2.jpg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
