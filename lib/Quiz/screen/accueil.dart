// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projet/Quiz/screen/quiz-screen.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Stack(children: [
        const SafeArea(
            child: Padding(
          padding:  EdgeInsets.all(15),
        )),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext ctx) {
              return QuizScreen();
            }));
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding:const EdgeInsets.all(28.0 * 0.75),
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child:const Text("App Quiz ",
                style: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 12, 176, 18))),
          ),
        ),
      ]),
    );
  }
}
