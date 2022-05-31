// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/ButtonLike.dart';
import 'package:viajabr_tcc/components/Paragraph.dart';
import 'package:viajabr_tcc/components/Picture.dart';
import 'package:viajabr_tcc/components/TitleField.dart';
import 'package:viajabr_tcc/components/ViajaBrAppBar.dart';
import 'package:viajabr_tcc/components/LabelValue.dart';
import 'package:viajabr_tcc/models/CityModel.dart';
import 'package:viajabr_tcc/models/TuristModel.dart';

class TouristPage extends StatefulWidget {
  final CityModel city;

  const TouristPage({Key? key, required this.city}) : super(key: key);

  @override
  _TouristPageState createState() => _TouristPageState();
}

class _TouristPageState extends State<TouristPage> {
  @override
  Widget build(final BuildContext context) {
    final List<TuristModel> turists = loadData();

    final List<Widget> widgets = [];
    widgets.add(ButtonLike(title: widget.city.name));
    for (var turist in turists) {
      addTurist(widgets, turist);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ViajaBrAppBar(),
      body: SafeArea(
          child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder: (final BuildContext context, final int indice) {
                return widgets[indice];
              })),
    );
  }

  void addTurist(final List<Widget> widgets, TuristModel turist) {
    widgets.add(const TitleField(title: 'Curiosidade'));
    widgets.add(Paragraph(text: turist.curiosity));
    widgets.add(Picture(path: turist.image));
    widgets.add(const TitleField(title: 'Ponto Turístico'));
    widgets.add(LabelValue(label: turist.title, value: turist.description));
    widgets.add(LabelValue(label: 'Localização:', value: turist.place));
    widgets.add(LabelValue(
        label: 'Preço:',
        value: turist.price > 0.0 ? ' $turist.price' : 'Gratis'));
  }

  List<TuristModel> loadData() {
    debugPrint(widget.city.name); // TODO
    final List<TuristModel> turists = [];
    turists.add(TuristModel(
        cityId: 1,
        id: 1,
        curiosity:
            'Seu início se deu como povoação chamada Gamela, pertencente ao município Porto Calvo. Em 1887 a povoação tornou-se a Vila Isabel. Posteriormente foi chamada de Maragogi devido ao rio que banhava a cidade. Tornou-se cidade em 1987.\nHoje Maragogi é conhecida como o caribe brasileiro e é um dos principais destinos escolhido do Brasil.',
        image: 'assets/images/maragogi.jpg',
        title: 'Praia de Antunes:',
        description:
            'Escolhida por milhares de turistas, esta praia possui mar calmo e quando a maré esta baixa oferece visão privilegiada dos corais.',
        place: 'Barra Grande, Maragogi - Estado de Alagoas, 57955-000.',
        price: 0.0));
    return turists;
  }
}
