import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String inputText;

  const MyButtons({Key? key, required this.inputText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Text(
          inputText,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              wordSpacing: 3,
              letterSpacing: 1.5),
        )),
      ),
    );
  }
}
