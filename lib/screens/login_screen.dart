import 'package:firebase_auth101/screens/sign_up_screen.dart';
import 'package:firebase_auth101/widgets/my_button.dart';
import 'package:flutter/material.dart';

import '../widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
            child: ListView(
          children: [
            const SizedBox(
              height: 240,
            ),
            CustomTextField(controller: _emailcontroller, hintText: "Email"),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
                controller: _passwordcontroller, hintText: "password"),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Login",
              onTap: () {},
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(onPressed: () {}, child: const Text("Forget Password")),
            const SizedBox(
              height: 180,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't Have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                    child: const Text("Signup"))
              ],
            ),
          ],
        )),
      ),
    ));
  }
}
