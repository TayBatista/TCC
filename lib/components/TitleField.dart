// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  final String title;
  final Color? color;
  final double? size;

  const TitleField({Key? key, required this.title, this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: size ?? 28,
            color: color ?? Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}
