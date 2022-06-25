import 'package:Viajabr/components/meu_appbar.dart';
import 'package:flutter/material.dart';


class SulPage extends StatefulWidget {
  const SulPage({Key? key}) : super(key: key);

  @override
  State<SulPage> createState() => _SulPageState();
}

class _SulPageState extends State<SulPage> {
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
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Sul",
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
                  child: const Text('Paraná (PR)'),
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
                  child: const Text('Rio G. do Sul (RS)'),
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
                  child: const Text('Santa Catarina (SC)'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Sul1.png',
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
