import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String labelText;
  String hintText;
  MyTextField({Key? key, required this.labelText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Colors.green),
            )),
      ),
    );
  }
}
