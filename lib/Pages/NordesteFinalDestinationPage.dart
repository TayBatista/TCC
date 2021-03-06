// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:Viajabr/components/meu_appbar.dart';

class NordesteFinalDestinationPage extends StatefulWidget {
  const NordesteFinalDestinationPage({Key? key}) : super(key: key);

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
                'Seu in??cio se deu como povoa????o chamada Gamela, pertencente ao munic??pio Porto Calvo. Em 1887 a povoa????o tornou-se a Vila Isabel. Posteriormente foi chamada de Maragogi devido ao rio que banhava a cidade. Tornou-se cidade em 1987.\nHoje Maragogi ?? conhecida como o caribe brasileiro e ?? um dos principais destinos escolhido do Brasil.',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: const Center(
                child: Text(
                  'Ponto Tur??stico',
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 24, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Praia de Antunes:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' Escolhida por milhares de turistas, esta praia possui mar calmo e quando a mar?? esta baixa oferece vis??o privilegiada dos corais.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize:24, color : Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                  text: 'Localiza????o:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                  text: ' Barra Grande, Maragogi - Estado de Alagoas, 57955-000.'),
                  ],
               ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 24, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Pre??o:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: ' Gr??tis',
                    ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
