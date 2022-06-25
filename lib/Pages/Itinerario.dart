import 'package:flutter/material.dart';
import 'package:Viajabr/components/appbar_itinerario.dart';

class ItinerarioPage extends StatefulWidget {
  const ItinerarioPage({Key? key}) : super(key: key);

  @override
  State<ItinerarioPage> createState() => _ItinerarioPageState();
}

class _ItinerarioPageState extends State<ItinerarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MeuAppBar1(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(6),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text('Destino 1:', style: TextStyle(fontSize: 25)),
                subtitle: Text('Aqui você pode ver o seu itinerário',
                    style: TextStyle(fontSize: 20)),
              ),
              elevation: 3,
              color: Color.fromARGB(255, 236, 209, 241),
              margin: EdgeInsets.all(10),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6),
            child: Card(
              child: TextField(
                minLines: 3,
                maxLines: 5,
                style: TextStyle(fontSize: 20),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: 'Destino 2:',
                  labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 236, 209, 241)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              elevation: 3,
              color: Color.fromARGB(255, 236, 209, 241),
              margin: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
