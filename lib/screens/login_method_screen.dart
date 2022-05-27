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
            children: const [
              SizedBox(
                height: 20,
              ),
              MyButtons(
                inputText: "Login Screen",
              ),
              SizedBox(
                height: 20,
              ),
              MyButtons(inputText: "Signup Screen"),
              SizedBox(
                height: 20,
              ),
              MyButtons(inputText: "Mobile"),
              SizedBox(
                height: 20,
              ),
              MyButtons(inputText: "Gmail Login"),
              SizedBox(
                height: 20,
              ),
              MyButtons(inputText: "Fb Login")
            ],
          )),
        ),
      ),
    );
  }
}
