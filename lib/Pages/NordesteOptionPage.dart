import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/meu_appbar.dart';
import 'package:viajabr_tcc/Pages/NordesteFinalDestinationPage.dart';

class NordesteOptionPage extends StatefulWidget {
  @override
  _NordesteOptionPageState createState() => _NordesteOptionPageState();
}

class _NordesteOptionPageState extends State<NordesteOptionPage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MeuAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Escolha um Destino:',
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(5.0),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orangeAccent,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Nordeste",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8.0),
                    minimumSize: Size(300, 20),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NordesteFinalDestinationPage()));
                  },
                  child: Text('Praia de Maragogi'),
                ),
              ),
            ),
              Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/maragogi.jpg', width: 300,),
                ],
              ),
            ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8.0),
                    minimumSize: Size(300, 20),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  onPressed: () {
                   // Navigator.of(context).push(
                   // MaterialPageRoute(builder: (context) => NordesteOptionPage()));
                  },
                  child: Text('Maceió'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/maceio.jpg', width: 300,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
