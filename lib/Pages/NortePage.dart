import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/meu_appbar.dart';

class NortePage extends StatefulWidget {
  const NortePage({Key? key}) : super(key: key);

  @override
  _NortePageState createState() => _NortePageState();
}

class _NortePageState extends State<NortePage> {
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
                  'Escolha um Estado:',
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
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Center(
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
                  onPressed: () {},
                  child: const Text('Acre (AC)'),
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
                  onPressed: () {},
                  child: const Text('Amapá (AP)'),
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
                  onPressed: () {},
                  child: const Text('Pará (PA)'),
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
                  onPressed: () {},
                  child: const Text('Rondônia (RO)'),
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
                  onPressed: () {},
                  child: const Text('Roraima (RR)'),
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
                  onPressed: () {},
                  child: const Text('Tocantins (TO)'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/norte.png',
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
