import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projet/Firebase/firebase_auth.dart';

// import 'package:mini/login.dart';

class Register extends StatefulWidget {
  const Register(
      {super.key,
      this.nom,
      this.numerophone,
      this.mail,
      this.password,
      this.confirmpassword,
      this.index});
  final String? nom;
  final String? numerophone;
  final String? mail;
  final String? password;
  final String? confirmpassword;
  final int? index;
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _numberphoneController = TextEditingController();
  final TextEditingController _mailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 165,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 48, 151, 225),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(50, 50),
                  bottomRight: Radius.elliptical(50, 50),
                )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Image.asset(
                      "assets/logo.jpg",
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                0,
                                3,
                              ))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
                      child: TextField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // label: const Text("Nom d\' utilisateur "),
                          contentPadding: EdgeInsets.only(top: 2),
                          icon: Icon(Icons.person),
                          labelText: 'Enter your name',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                0,
                                3,
                              ))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
                      child: TextField(
                        controller: _numberphoneController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // label: const Text("Nom d\' utilisateur "),
                          contentPadding: EdgeInsets.only(top: 2),
                          icon: Icon(Icons.phone),
                          labelText: 'Enter your phone number',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                0,
                                3,
                              ))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
                      child: TextField(
                        controller: _mailcontroller,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // label: const Text("Nom d\' utilisateur "),
                          contentPadding: EdgeInsets.only(top: 2),
                          icon: Icon(Icons.mail),
                          labelText: 'Enter your e-mail',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                0,
                                3,
                              ))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // label: const Text("Nom d\' utilisateur "),
                          contentPadding: EdgeInsets.only(top: 2),
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.lock,
                            ),
                          ),
                          labelText: 'Enter your password',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                0,
                                3,
                              ))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
                      child: TextField(
                        controller: _confirmpasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // label: const Text("Nom d\' utilisateur "),
                          contentPadding: EdgeInsets.only(top: 2),
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.lock,
                            ),
                          ),
                          labelText: 'Confirm your password',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _register,
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Already have an account ?",
                      style: TextStyle(fontSize: 15, color: Colors.grey[850]),
                    ),
                    TextSpan(
                        text: "login",
                        style: TextStyle(
                            fontSize: 15, color: Colors.orangeAccent[700]),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed("/login");
                          }),
                  ])),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       //Firestore
                  //       CollectionReference collRef = FirebaseFirestore.instance
                  //           .collection('dtcregister');
                  //       collRef.add({
                  //         'name': _usernameController.text,
                  //         'phone': _numberphoneController.text,
                  //         'email': _mailcontroller.text,
                  //         'password': _passwordController,
                  //         'confirm password': _confirmpasswordController.text,
                  //       });
                  //     },
                  //     child: const Text('Add ekl')),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void _register() async {
    String email = _mailcontroller.text;
    String password = _passwordController.text;
    //Authentication

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print('User is successfully created');
      // ignore: use_build_context_synchronously
      Navigator.popAndPushNamed(context, 'pageregisterlogin');
    } else {
      print('some error heppend');
    }
  }
}
