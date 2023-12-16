import 'package:flutter/material.dart';
// import 'package:projet/widgets/Filieres.dart';
// import 'package:projet/widgets/menupage.dart';

class MoviePageButtons extends StatefulWidget {
  @override
  State<MoviePageButtons> createState() => _MoviePageButtonsState();
}

class _MoviePageButtonsState extends State<MoviePageButtons> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: TextButton(
          //     onPressed: () {
          //       Navigator.of(context)
          //           .push(MaterialPageRoute(builder: (BuildContext ctx) {
          //         return MenuPage();
          //       }));
          //     },
          //     child: const Text(
          //       'Publication ',
          //       style: TextStyle(fontSize: 25, color: Colors.black45),
          //     ),
          //   ),
          // ),
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: TextButton(
          //     onPressed: () {
          //       Navigator.of(context)
          //           .push(MaterialPageRoute(builder: (BuildContext ctx) {
          //         return Filiere();
          //       }));
          //     },
          //     child: const Text(
          //       'A propos ',
          //       style: TextStyle(fontSize: 25, color: Colors.black45),
          //     ),
          //   ),
          // ),

          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFF292837),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                  )
                ]),
            child: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFF292837),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                  )
                ]),
            child: const Icon(
              Icons.download,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFF292837),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                  )
                ]),
            child: const Icon(
              Icons.share,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
