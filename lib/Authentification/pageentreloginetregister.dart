import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepageito extends StatelessWidget {
  const Homepageito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamed("/login");
            },
            child: Column(
              children: [
                const Text(
                  'Votre Compte a été bien crée',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
