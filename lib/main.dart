import 'package:flutter/material.dart';
import 'package:Viajabr/Pages/HomePage.dart';

void main() {
  runApp(const ViajaBR());
}

class ViajaBR extends StatelessWidget {
  const ViajaBR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo de turismo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
