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
                        nextPage: StatesPage(regionId: 1),
                        color: Colors.green),
                    RegionButton(
                        text: 'Nordeste',
                        nextPage: StatesPage(regionId: 2),
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
                        nextPage: StatesPage(regionId: 3),
                        color: Colors.yellow),
                    RegionButton(
                        text: 'Suldeste',
                        nextPage: StatesPage(regionId: 4),
                        color: Colors.redAccent),
                  ],
                )),
            const Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                child: const RegionButton(
                    text: 'Sul',
                    nextPage: StatesPage(regionId: 5),
                    color: Colors.blue)),
            const Picture(path: 'assets/images/brasil2.png'),
          ],
        ),
      ),
    );
  }
}
