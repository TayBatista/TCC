import 'package:flutter/material.dart';

void main() {
  runApp(const ViajaBR());
}

class ViajaBR extends StatelessWidget {
  const ViajaBR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplicativo de turismo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/viajabr.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Escolha uma Região:',
              style: TextStyle(fontSize: 32),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(170.0, 30.0),
                    primary: Colors.green,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NortePage()));
                  },
                  child: const Text('Norte'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(170.0, 30.0),
                    primary: Colors.orangeAccent,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Nordeste'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(170.0, 30.0),
                    primary: Colors.yellow,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Centro-Oeste'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(170.0, 30.0),
                    primary: Colors.redAccent,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Sudeste'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(170.0, 30.0),
                    primary: Colors.blue,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Sul'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/brasil2.png',
                  width: 350,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/viajabr.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Escolha um Estado:',
                style: TextStyle(fontSize: 32),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Norte'),
            ),
          ],
        ),
      ),
    );
  }
}
