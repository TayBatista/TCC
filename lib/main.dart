import 'package:flutter/material.dart';
import 'package:viajabr_tcc/newpages/RegionsPage.dart';
// import 'package:viajabr_tcc/Pages/HomePage.dart'; // Tela sem refatorar

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
      home: const RegionsPage(),
     // home: const HomePage(),
    );
  }
}
