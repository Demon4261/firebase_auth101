import 'package:firebase_auth101/widgets/my_button.dart';
import 'package:flutter/material.dart';

import '../widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            MyTextField(
              labelText: "email",
              hintText: "email",
            ),
            MyTextField(
              labelText: "password",
              hintText: "password",
            ),
            const SizedBox(
              height: 10,
            ),
            const MyButtons(
              inputText: "Login",
            )
          ],
        ),
      )),
    ));
  }
}
