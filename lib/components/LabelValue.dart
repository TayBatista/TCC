// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';

class LabelValue extends StatelessWidget {
  final String label;
  final String value;

  const LabelValue({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 24, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: label,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: value,
            ),
          ],
        ),
      ),
    );
  }
}
