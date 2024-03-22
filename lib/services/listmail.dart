import 'package:flutter/material.dart';
import 'package:projet/Authentification/register.dart';
import 'package:projet/services/sharedpref_authentification.dart';

class AffichageMail extends StatefulWidget {
  const AffichageMail({super.key});

  @override
  State<AffichageMail> createState() => _AffichageMailState();
}

class _AffichageMailState extends State<AffichageMail> {
  SharedPreferencesService? service;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List compte'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder(
            future: service?.getTodo(),
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Register(
                                nom: snapshot.data?[index],
                                numerophone: snapshot.data?[index],
                                mail: snapshot.data?[index],
                                password: snapshot.data?[index],
                                confirmpassword: snapshot.data?[index],
                                index: index,
                              )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Colors.green,
                          )),
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      height: 60,
                      //Get Data
                      child: Row(children: [
                        Expanded(
                            child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.check_circle_outline,
                              color: Colors.blue,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                //Ilay zavatra ni_ajoutena
                                snapshot.data?[index] ?? '',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )),
                        //Remove data
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                service?.removeTodo(index);
                              });
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ]),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
