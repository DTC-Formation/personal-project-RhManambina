import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedUsername = prefs.getString('username');
    String? storedPassword = prefs.getString('password');

    if (_usernameController.text == storedUsername &&
        _passwordController.text == storedPassword) {
      // Authentification réussie
      _showMessage('Authentification réussie');
    } else {
      // Échec de l'authentification
      _showMessage('Nom d\'utilisateur ou mot de passe incorrect');
    }
  }

  void _showMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Message'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
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
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Padding(
          //   padding:
          //       const EdgeInsets.only(top: 60, bottom: 60, left: 60, right: 60),
          //   child: Image.asset('assets/image.jpg'),
          // ),

          // Card(
          //   child: Image.asset('assets/image.jpg'),
          // ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              //  color: Color.fromARGB(8, 212, 208, 208),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
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
                        controller: _usernameController,
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
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "homepage");
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          child: Center(
                              child: Text(
                            'Se connecter',
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
                      text: "Don't have an account ?",
                      style: TextStyle(fontSize: 15, color: Colors.grey[850]),
                    ),
                    TextSpan(
                        text: "Register",
                        style: TextStyle(
                            fontSize: 15, color: Colors.orangeAccent[700]),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed("/register");
                          }),
                  ])),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          // inputStyle(const Icon(Icons.email), "Enter your e-mail"),
        ],
      ),
    );
  }
}
