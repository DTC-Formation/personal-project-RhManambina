import 'package:flutter/material.dart';

class Footerdetailuniversite extends StatelessWidget {
  const Footerdetailuniversite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          // color: Color.fromARGB(255, 136, 136, 139),
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              //Navigate to Home Page
              Navigator.pushNamed(context, "homepage");
            },
            child: const Column(
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.black,
                ),
                Text('Accueil'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "aproposuniversitePage");
            },
            child: const Column(
              children: [
                Icon(
                  Icons.public,
                  size: 35,
                  color: Colors.black,
                ),
                Text('A propos'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "filierePage");
            },
            child: const Column(
              children: [
                Icon(
                  Icons.branding_watermark,
                  size: 35,
                  color: Colors.black,
                ),
                Text('Filière'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "historiquePage");
            },
            child: const Column(
              children: [
                Icon(
                  Icons.history,
                  size: 35,
                  color: Colors.black,
                ),
                Text('Historique'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
