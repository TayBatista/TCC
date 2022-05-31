// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/Picture.dart';
import 'package:viajabr_tcc/newpages/CitiesPage.dart';
import 'package:viajabr_tcc/components/ButtonLike.dart';
import 'package:viajabr_tcc/components/RedrectionButton.dart';
import 'package:viajabr_tcc/components/TitleField.dart';
import 'package:viajabr_tcc/components/ViajaBrAppBar.dart';
import 'package:viajabr_tcc/models/StateModel.dart';

// NordestePage
class StatesPage extends StatefulWidget {
  final int id;
  final String title;
  final String image;
  final Color color;

  const StatesPage({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  _StatesPageState createState() => _StatesPageState();
}

class _StatesPageState extends State<StatesPage> {
  @override
  Widget build(final BuildContext context) {
    List<StateModel> states = loadData();

    final List<Widget> widgets = [];
    widgets.add(ButtonLike(title: widget.title, color: widget.color));
    widgets.add(
        const TitleField(title: 'Escolha um Estado:', color: Colors.black));
    for (var state in states) {
      widgets.add(RedrectionButton(
          text: state.name,
          nextPage: CitiesPage(state: state, color: widget.color)));
    }
    widgets.add(Picture(path: widget.image));
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

  List<StateModel> loadData() {
    debugPrint(widget.id.toString()); // TODO
    final List<StateModel> states = [];
    states.add(StateModel(regionId: 1, id: 1, name: 'Alagoas (AL)'));
    states.add(StateModel(regionId: 1, id: 2, name: 'Bahia (BA)'));
    states.add(StateModel(regionId: 1, id: 3, name: 'Ceará (CE)'));
    states.add(StateModel(regionId: 1, id: 4, name: 'Maranhão (MA)'));
    states.add(StateModel(regionId: 1, id: 5, name: 'Paraíba (PB)'));
    states.add(StateModel(regionId: 1, id: 6, name: 'Pernambuco (PE)'));
    states.add(StateModel(regionId: 1, id: 7, name: 'Piauí (PI)'));
    states.add(StateModel(regionId: 1, id: 8, name: 'Rio G. do Norte (RN)'));
    states.add(StateModel(regionId: 1, id: 9, name: 'Sergipe (SE)'));
    return states;
  }
}
