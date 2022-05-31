// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';
import 'package:viajabr_tcc/newpages/TouristPage.dart';
import 'package:viajabr_tcc/components/ButtonLike.dart';
import 'package:viajabr_tcc/components/Picture.dart';
import 'package:viajabr_tcc/components/RedrectionButton.dart';
import 'package:viajabr_tcc/components/TitleField.dart';
import 'package:viajabr_tcc/components/ViajaBrAppBar.dart';
import 'package:viajabr_tcc/models/CityModel.dart';
import 'package:viajabr_tcc/models/StateModel.dart';

class CitiesPage extends StatefulWidget {
  final StateModel state;
  final Color color;

  const CitiesPage({Key? key, required this.state, required this.color})
      : super(key: key);

  @override
  _CitiesPageState createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  @override
  Widget build(final BuildContext context) {
    final List<Widget> widgets = [];
    widgets.add(ButtonLike(title: "Alagoas (AL)", color: widget.color));
    widgets.add(
        const TitleField(title: 'Escolha um Destino:', color: Colors.black));

    final List<CityModel> cities = loadData();
    for (var city in cities) {
      addCity(widgets, city);
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

  void addCity(final List<Widget> widgets, CityModel city) {
    widgets.add(RedrectionButton(
        text: city.name,
        nextPage: TouristPage(city: city, color: widget.color)));
    widgets.add(Picture(path: city.image));
  }

  List<CityModel> loadData() {
    debugPrint(widget.state.name); // TODO
    final List<CityModel> cities = [];
    cities.add(CityModel(
        stateId: 1,
        id: 1,
        image: 'assets/images/maragogi.jpg',
        name: 'Praia de Maragogi'));
    cities.add(CityModel(
        stateId: 1, id: 1, image: 'assets/images/maceio.jpg', name: 'Maceió'));
    return cities;
  }
}
