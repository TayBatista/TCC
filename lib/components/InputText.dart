// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String title;
  final bool? obscureText;

  const InputText({Key? key, required this.title, this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      autofocus: true,
      obscureText: obscureText ?? false,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black, fontSize: 30),
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
