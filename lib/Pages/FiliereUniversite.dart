import 'package:flutter/material.dart';
import 'package:projet/Pages/DetailUniversite.dart';

class FiliereUniversite extends StatelessWidget {
  const FiliereUniversite({super.key});

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
              'Filière ',
              style: TextStyle(
                fontSize: 30,
              ),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(children: [
                for (int i = 1; i <= 5; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/image$i.jpg",
                              height: 70,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            const Text(' Génie Logiciel ')
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 25,
                      ),
                    ]),
                  )
              ]),
            )
          ],
        )),
      ),
    );
  }
}
