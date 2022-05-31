// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';

class RedrectionButton extends StatelessWidget {
  final String text;
  final Widget nextPage;
  final Color? primary;
  final Color? onPrimary;

  const RedrectionButton(
      {Key? key,
      required this.text,
      required this.nextPage,
      this.primary,
      this.onPrimary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8.0),
            minimumSize: const Size(300, 20),
            primary: primary ?? Colors.white,
            onPrimary: onPrimary ?? Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => nextPage));
          },
          child: Text(text),
        ),
      ),
    );
  }
}
