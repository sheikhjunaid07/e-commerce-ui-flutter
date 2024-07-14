import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final controller;
  final bool obsecureText;

  const MyTextField({super.key, required this.labelText, required this.controller, required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: InputBorder.none
      ),
    );
  }
}
