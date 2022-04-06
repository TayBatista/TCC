import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/meu_appbar.dart';

class NordesteFinalDestinationPage extends StatefulWidget {
  @override
  _NordesteFinalDestinationPageState createState() =>
      _NordesteFinalDestinationPageState();
}

class _NordesteFinalDestinationPageState
    extends State<NordesteFinalDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MeuAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
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
                      "Maragogi",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: Center(
                child: Text(
                  'Curiosidade',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: Text(
                'Maragogi é também conhecido como o caribe brasileiro',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/maragogi.jpg',
                    width: 300,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: Center(
                child: Text(
                  'Curiosidade',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: Text(
                'Maragogi é também conhecido como o caribe brasileiro',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
