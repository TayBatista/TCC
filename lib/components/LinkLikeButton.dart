// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';

class LinkLikeButton extends StatelessWidget {
  final String text;
  final Widget nextPage;

  const LinkLikeButton({Key? key, required this.text, required this.nextPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => nextPage),
        ),
      },
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
