import 'package:flutter/material.dart';
import 'package:viajabr_tcc/Pages/NordesteFDMaceio.dart';
import 'package:viajabr_tcc/components/meu_appbar.dart';
import 'package:viajabr_tcc/Pages/NordesteFinalDestinationPage.dart';

class NordesteOptionPage extends StatefulWidget {
  const NordesteOptionPage({Key? key}) : super(key: key);

  @override
  _NordesteOptionPageState createState() => _NordesteOptionPageState();
}

class _NordesteOptionPageState extends State<NordesteOptionPage> {
    @override
  Widget build(BuildContext context) {  
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MeuAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Escolha um Destino:',
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orangeAccent,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Center(
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
                    padding: const EdgeInsets.all(8.0),
                    minimumSize: const Size(300, 20),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NordesteFinalDestinationPage()));
                  },
                  child: const Text('Praia de Maragogi'),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
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
                    padding: const EdgeInsets.all(8.0),
                    minimumSize: const Size(300, 20),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NordesteFDMaceio()));
                  },
                  child: const Text('Maceió'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
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
