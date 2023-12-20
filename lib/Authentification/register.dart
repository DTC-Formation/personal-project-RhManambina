import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projet/services/sharedpref_authentification.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _numberphoneController = TextEditingController();
  final TextEditingController _mailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller = TextEditingController(text: widget.nom);
    controller = TextEditingController(text: widget.numerophone);
    controller = TextEditingController(text: widget.mail);
    controller = TextEditingController(text: widget.password);
    controller = TextEditingController(text: widget.confirmpassword);
    // TODO: implement initState
    super.initState();
  }

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
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: ElevatedButton(
                        onPressed: () async {
                          final sharedPreferences =
                              await SharedPreferences.getInstance();
                          SharedPreferencesService(sharedPreferences)
                              .addTodo(_usernameController.text);
                          SharedPreferencesService(sharedPreferences)
                              .addTodo(_numberphoneController.text);
                          SharedPreferencesService(sharedPreferences)
                              .addTodo(_mailcontroller.text);
                          SharedPreferencesService(sharedPreferences)
                              .addTodo(_passwordController.text);
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).pushNamed("/login");
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          child: Center(
                              child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          )),
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
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
