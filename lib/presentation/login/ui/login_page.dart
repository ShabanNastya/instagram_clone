import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/l10n/gen/app_localizations.dart';

import 'package:provider/provider.dart';

import '../../../data/repository/firebase_auth_repository.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _loginKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController(text: "test@gmail.com");
    _passwordController = TextEditingController(text: "123456");
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Form(
        key: _loginKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.login,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.email,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.password,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        Theme.of(context).colorScheme.primary, // background
                    onPrimary:
                        Theme.of(context).colorScheme.onPrimary, // foreground
                  ),
                  onPressed: () async {
                    final String email = _emailController.text.trim();
                    final String password = _passwordController.text.trim();
                    if (email.isEmpty) {
                      print("email is empty");
                    } else {
                      if (password.isEmpty) {
                        print("Emailcontroller   " + _emailController.text);
                        print("password is empty");
                      } else {
                        context
                            .read<FirebaseAuthRepository>()
                            .login(email: email, password: password);
                      }
                    }
                  },
                  child: Text(AppLocalizations.of(context)!.login)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        Theme.of(context).colorScheme.primary, // background
                    onPrimary:
                        Theme.of(context).colorScheme.onPrimary, // foreground
                  ),
                  onPressed: () {
                    final String email = _emailController.text.trim();
                    final String password = _passwordController.text.trim();
                    if (email.isEmpty) {
                      print("email is empty");
                    } else {
                      if (password.isEmpty) {
                        print("password is empty");
                      } else {
                        context
                            .read<FirebaseAuthRepository>()
                            .signUp(email: email, password: password)
                            .then((value) async {
                          User user = FirebaseAuth.instance.currentUser!;
                          await FirebaseFirestore.instance
                              .collection("users")
                              .doc(user.uid)
                              .set({
                            'uid': user.uid,
                            'email': email,
                            'password': password,
                          });
                        });
                      }
                    }
                  },
                  child: Text(AppLocalizations.of(context)!.register))
            ],
          ),
        ),
      )),
    );
  }
}
