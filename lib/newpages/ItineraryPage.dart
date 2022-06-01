// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../components/ViajaBrAppBar.dart';

class ItineraryPage extends StatefulWidget {
  const ItineraryPage({Key? key}) : super(key: key);

  @override
  State<ItineraryPage> createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> {
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ViajaBrAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8, 20, 8, 10),
            child: Card(
              child: ListTile(
                title: Text('Itinerário', style: TextStyle(fontSize: 25)),
                subtitle: Text('Aqui você pode ver o seu itinerário',
                    style: TextStyle(fontSize: 20)),
              ),
              elevation: 3,
              color: Color.fromARGB(255, 236, 209, 241),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 10, 8, 20),
            child: Card(
              child: ListTile(
                title: Text('Itinerário', style: TextStyle(fontSize: 25)),
                subtitle: Text('', style: TextStyle(fontSize: 20)),
              ),
              elevation: 3,
              color: Color.fromARGB(255, 236, 209, 241),
            ),
          ),
        ],
      ),
    );
  }
}
