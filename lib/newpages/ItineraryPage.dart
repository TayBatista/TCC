// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../components/meu_appbar.dart';

class ItineraryPage extends StatefulWidget {
  const ItineraryPage({Key? key}) : super(key: key);

  @override
  State<ItineraryPage> createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> {
  @override
  Widget build(final BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: MeuAppBar(),
    );
  }
}
