// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../components/meu_appbar.dart';

class ItinerarioPage extends StatefulWidget {
  const ItinerarioPage({Key? key}) : super(key: key);

  @override
  State<ItinerarioPage> createState() => _ItinerarioPageState();
}

class _ItinerarioPageState extends State<ItinerarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const MeuAppBar(),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Norte'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
