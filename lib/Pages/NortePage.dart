import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/meu_appbar.dart';

class NortePage extends StatefulWidget {
  @override
  _NortePageState createState() => _NortePageState();
}

class _NortePageState extends State<NortePage> {
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
                  'Escolha um Estado:',
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
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Norte",
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
                  onPressed: () {},
                  child: Text('Acre (AC)'),
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
                  onPressed: () {},
                  child: Text('Amapá (AP)'),
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
                  onPressed: () {},
                  child: Text('Pará (PA)'),
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
                  onPressed: () {},
                  child: Text('Rondônia (RO)'),
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
                  onPressed: () {},
                  child: Text('Roraima (RR)'),
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
                  onPressed: () {},
                  child: Text('Tocantins (TO)'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/norte.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
