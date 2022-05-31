// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/meu_appbar.dart';

class NordesteFDMaceio extends StatefulWidget {
  const NordesteFDMaceio({Key? key}) : super(key: key);

  @override
  _NordesteFDMaceio createState() =>
      _NordesteFDMaceio();
}

class _NordesteFDMaceio
    extends State<NordesteFDMaceio> {
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
                  padding: EdgeInsets.all(8.0),
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
                      "Marechal Deodoro",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: const Center(
                child: const Text(
                  'Curiosidade',
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: const Text(
                'Cidade histórica alagoana onde nasceu Marechal Deodoro da Fonseca (o primeiro presidente do Brasil). Fundada em 1591, passou a ser a capital alagoana em 1817 e só foi considerada uma cidade em 1823.\nFoi considerada Patrimonio Histórico pelo Ministério da Cultura em 2006.\nÉ uma boa escolha para os amantes de arquitetura e a história da cultura brasileira.',
                style: const TextStyle(
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
                    'assets/images/MarechalDeodoro.png',
                    width: 300,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 8),
              child: const Center(
                child: const Text(
                  'Ponto Turístico',
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
                        text: 'Igreja Santa Maria Madalena:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' Esta igreja tem o estilo rococó e foi contruida entre os séculos XVI e XVII. Além de possuir uma faixada fantástica, seu interior também é lindo e guarda uma imagem rara de Jesus dos Escolhidos.'),
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
                  text: 'Localização:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                  text: ' R. Dr. Melo Morães, 1-117 - Vila Santa Maria Madalena, Mal. Deodoro - AL, 57160-000'),
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
                      text: 'Preço:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: ' Grátis',
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