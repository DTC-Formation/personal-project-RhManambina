import 'package:flutter/material.dart';

class ListUniversite extends StatelessWidget {
  const ListUniversite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Liste des Universités",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i <= 5; i++)
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "listUniversite");
                  },
                  child: Container(
                    width: 190,
                    height: 260,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF292B37).withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            "assets/image$i.jpg",
                            height: 140,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ISPM",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Ambatomaro/Antsobolo",
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "9.5",
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
