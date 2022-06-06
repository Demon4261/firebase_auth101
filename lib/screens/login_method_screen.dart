import 'package:firebase_auth101/screens/login_screen.dart';
import 'package:firebase_auth101/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class LoginMethod extends StatefulWidget {
  const LoginMethod({Key? key}) : super(key: key);

  @override
  State<LoginMethod> createState() => _LoginMethodState();
}

class _LoginMethodState extends State<LoginMethod> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Firebase Auth"),
          elevation: 0.0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Email Sign up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Email login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Phone Sign up",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "fb Sign up",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "google sign Up",
                onTap: () {},
              )
            ],
          )),
        ),
      ),
    );
  }
}
