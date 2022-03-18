import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  TextEditingController emailFieldController = TextEditingController(text: '');
  TextEditingController passwordFieldController = TextEditingController();
  var passwordVisibility = true;
  var errors = [];

  final _formKey = GlobalKey<FormState>();

  _signIn(context) async {
    if (_formKey.currentState.validate()) {
      Navigator.pushReplacementNamed(context, '/');
    }
  }

  _required(val) {
    if (val.isEmpty) {
      return 'Campo obrigatório';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade600,
                Colors.blue.shade400,
                Colors.blue.shade900,
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailFieldController,
                    validator: (val) => _required(val),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: passwordFieldController,
                    obscureText: passwordVisibility,
                    validator: (val) => _required(val),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Senha',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () => {passwordVisibility = !passwordVisibility},
                          );
                        },
                        icon: Icon(
                            passwordVisibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                        double.infinity,
                        40,
                      ),
                    ),
                    onPressed: () => _signIn(context),
                    child: const Text(
                      'Entrar',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
