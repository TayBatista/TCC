// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';

class RegionButton extends StatelessWidget {
  final String text;
  final Widget nextPage;
  final Color color;

  const RegionButton(
      {Key? key,
      required this.text,
      required this.nextPage,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(10.0),
        minimumSize: const Size(170, 30),
        primary: color,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: const TextStyle(
          fontSize: 26,
        ),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => nextPage));
      },
      child: Text(text),
    );
  }
}
