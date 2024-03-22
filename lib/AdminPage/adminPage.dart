import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InteractivePage extends StatefulWidget {
  const InteractivePage({super.key});

  @override
  State<InteractivePage> createState() => _InteractivePage();
}

class _InteractivePage extends State<InteractivePage> {
  bool isDarkMode = false;

  //declaration IBM
  String result = '';

  // Fonction date calcul age

  //Create datetime variable
  String myAge = '';

  DateTime dateTime = DateTime.now();

  pickDob() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate != null) {
        calculateAge(pickedDate);
      }
    });
  }

  calculateAge(DateTime birth) {
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);
    int years = age.inDays ~/ 365;
    // int months = (age.inDays % 365) ~/ 30;
    // int days = ((age.inDays % 365) % 30) ;
    setState(() {
      // myAge = '$years years, $months months and $days days';
      myAge = '$years ans';
    });
  }

  //calcul BMI

  calculBmi(double taille, double poids) {
    // double result =
    double finalresult = poids / (taille * taille / 1000);
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

  //Photo de couverture
  Widget photocouverture() => Container(
    color: Colors.grey,
    child: Image.asset(
      'assets/image1.jpg',
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    ),
  );
  //Photo de profile
  Widget photoprofile() => Container(
    width: 150,
    height: 150,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
    ),
    child: Image.asset(
      'assets/image2.jpg',
      fit: BoxFit.cover,
    ),
  );

  //Radio
  String? valeurs = '';

  //create variable ho an'ilay slide
  double currentvalue = 0;

  //Variable ho an'ilay checkbox
  bool? isCheckedflutter = false;
  bool? isCheckedreact = false;
  bool? isCheckedsymfony = false;

  //Declarer variable ho an'ilay iaffichena azy
  String? nom;
  String? prenom;
  String? Sexe;
  int? Taille;
  int? poids;
  String? Technologie;
  DateTime? ddn;
  String? Loisirs;

  //declarer variable ho sotomin'ilay boutton valider
  var namectrl = TextEditingController();
  var surnamectrl = TextEditingController();
  var loisirctrl = TextEditingController();
  var poidsctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //Ato no mi-afficher rehefa avy clikena ny boutton

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
            Card(
              color: const Color.fromARGB(255, 221, 217, 217),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(children: [
                  Row(
                    children: [
                      //Nampiasa TextField

                      const Text('nom: '),
                      Text('${namectrl.text}' ' ' 'et  '),
                      const Text('prénom: '),
                      Text('${surnamectrl.text}'),
                    ],
                  ),

                  //Nampiasa radio

                  Row(
                    children: [
                      const Text('Sexe: '),
                      Text('$valeurs'),
                    ],
                  ),

                  //Taille nampiasa slide

                  Row(
                    children: [
                      const Text('Taille: '),
                      Text('$currentvalue' 'cm'),
                    ],
                  ),

                  //DDN nampiasa DatePicker

                  Row(
                    children: [
                      const Text('Age : '),
                      Text(myAge),
                    ],
                  ),

                  //Nampiasa checkbox
                  //Techno
                  Row(
                    children: [
                      const Text('Liste des Technologies : '),

                      //Mi-afficher zavatra maromaro

                      Visibility(
                        visible: isCheckedflutter ?? false,
                        child: const Text('flutter , '),
                      ),
                      Visibility(
                        visible: isCheckedreact ?? false,
                        child: const Text('React , '),
                      ),
                      Visibility(
                        visible: isCheckedsymfony ?? false,
                        child: const Text('Symfony  '),
                      ),
                    ],
                  ),

                  //Mi_afficher ny loisir
                  Row(
                    children: [
                      const Text('Loisir: '),
                      Text(loisirctrl.text),
                    ],
                  ),

                  //Mi_afficher ny BMI
                  Row(
                    children: [
                      const Text('BMI : '),
                      Text(result),
                    ],
                  ),
                ]),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 186, 65, 65),
            ),
            Card(
                color: const Color.fromARGB(255, 221, 217, 217),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                    Row(
                      children: [
                        const Text('Nom :  '),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: namectrl,
                            decoration: const InputDecoration(hintText: 'nom'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Prenom :  '),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: surnamectrl,
                            decoration: const InputDecoration(hintText: 'prenom'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Sexe : "),
                        Row(
                          children: [
                            Radio(
                              value: 'Masculin',
                              groupValue: valeurs,
                              onChanged: (value) {
                                setState(() {
                                  valeurs = value;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text("Masculin"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Feminin',
                              groupValue: valeurs,
                              onChanged: (value) {
                                setState(() {
                                  valeurs = value;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text("Feminin"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Taille : '),
                        //  Text(currentvalue.toString(), style: TextStyle(fontSize: 35),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Slider(
                              value: currentvalue,
                              min: 0,
                              max: 250,
                              divisions: 10,
                              label: currentvalue.toString(),
                              activeColor: Colors.green,
                              thumbColor: Colors.brown,
                              inactiveColor: Colors.blueGrey,
                              onChanged: (value) {
                                setState(() {
                                  currentvalue = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Poids :  '),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: poidsctrl,
                            decoration: const InputDecoration(hintText: 'Poids'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Technologie : '),
                        Row(
                          children: [
                            const Text('Flutter'),
                            Checkbox(
                                value: isCheckedflutter,
                                activeColor: Colors.black,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedflutter = true;
                                  });
                                }),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('React'),
                            Checkbox(
                                value: isCheckedreact,
                                activeColor: Colors.black,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedreact = true;
                                  });
                                }),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Symfony'),
                            Checkbox(
                                value: isCheckedsymfony,
                                activeColor: Colors.blueGrey,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedsymfony = newBool;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('DDN: '),

                        ElevatedButton(
                          onPressed: () => pickDob(),
                          child: const Text('ddn'),
                        ),
                        // Text(dateTime.year.toString(),style: TextStyle(fontSize: 15),),
                        Text(
                          dateTime.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Loisirs :  '),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: loisirctrl,
                            decoration: const InputDecoration(hintText: 'Loisirs'),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () =>

                      //calcul BMI
                      //String avadika value io @poids

                      calculBmi(
                          currentvalue, double.parse(poidsctrl.value.text)),
                      child: const Text(
                        'Valider',
                      ),
                    ),
                  ]),
                )),
          ],
        ),
      ),
      backgroundColor: (isDarkMode == true
          ? Colors.white
          : const Color.fromARGB(255, 216, 215, 215)),
    );
  }
}
