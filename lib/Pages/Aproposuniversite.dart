import 'package:flutter/material.dart';
import 'package:projet/Pages/DetailUniversite.dart';

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
                'A propos ',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
