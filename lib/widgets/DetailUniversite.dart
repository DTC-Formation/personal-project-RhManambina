import 'package:flutter/material.dart';
// import 'package:projet/widgets/Filieres.dart';
// import 'package:projet/widgets/menupage.dart';

class DetailPadeUniversite extends StatefulWidget {
  const DetailPadeUniversite({super.key});

  @override
  State<DetailPadeUniversite> createState() => _DetailPadeUniversiteState();
}

class _DetailPadeUniversiteState extends State<DetailPadeUniversite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
