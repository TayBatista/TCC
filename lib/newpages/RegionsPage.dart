// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/Picture.dart';
import 'package:viajabr_tcc/components/RegionButton.dart';
import 'package:viajabr_tcc/components/TitleField.dart';
import 'package:viajabr_tcc/components/ViajaBrAppBar.dart';
import 'StatesPage.dart';

class RegionsPage extends StatefulWidget {
  const RegionsPage({Key? key}) : super(key: key);

  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

class _RegionsPageState extends State<RegionsPage> {
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ViajaBrAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleField(
                title: 'Escolha uma Região:', color: Colors.black, size: 32),
            Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    RegionButton(
                        text: 'Norte',
                        nextPage: StatesPage(
                            id: 1,
                            title: 'Norte',
                            image: 'assets/images/norte.png',
                            color: Colors.green),
                        color: Colors.green),
                    RegionButton(
                        text: 'Nordeste',
                        nextPage: StatesPage(
                            id: 2,
                            title: 'Nordeste',
                            image: 'assets/images/nordeste.png',
                            color: Colors.orangeAccent),
                        color: Colors.orangeAccent),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    RegionButton(
                        text: 'Centro-Oeste',
                        nextPage: StatesPage(
                            id: 3,
                            title: 'Centro-Oeste',
                            image: 'assets/images/centro_oeste.png',
                            color: Colors.yellow),
                        color: Colors.yellow),
                    RegionButton(
                        text: 'Suldeste',
                        nextPage: StatesPage(
                            id: 4,
                            title: 'Suldeste',
                            image: 'assets/images/sudeste3.jpg',
                            color: Colors.redAccent),
                        color: Colors.redAccent),
                  ],
                )),
            const Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                child: const RegionButton(
                    text: 'Sul',
                    nextPage: StatesPage(
                        id: 5,
                        title: 'Sul',
                        image: 'assets/images/Sul1.png',
                        color: Colors.blue),
                    color: Colors.blue)),
            const Picture(path: 'assets/images/brasil2.png'),
          ],
        ),
      ),
    );
  }
}
