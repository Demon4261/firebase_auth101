import 'package:firebase_auth101/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';
import '../widgets/my_text_field.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confermpasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Signup Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 190,
            ),
            CustomTextField(
              hintText: "Email",
              controller: _emailcontroller,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Password",
              controller: _passwordcontroller,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Conferm Password",
              controller: _confermpasswordcontroller,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Signup",
              onTap: () {},
            ),
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: const Text("Log in"))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
