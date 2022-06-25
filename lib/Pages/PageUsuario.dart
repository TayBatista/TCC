import 'package:Viajabr/components/meu_appbar.dart';
import 'package:flutter/material.dart';
import 'package:Viajabr/Pages/LoginPage.dart';


class CriaUsuario extends StatefulWidget {
  const CriaUsuario({Key? key}) : super(key: key);

  @override
  State<CriaUsuario> createState() => _CriaUsuarioState();
}

class _CriaUsuarioState extends State<CriaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MeuAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  cursorColor: Colors.black,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  cursorColor: Colors.black,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Sobrenome",
                    labelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  cursorColor: Colors.black,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  cursorColor: Colors.black,
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Usuário cadastrado com sucesso!"),
                          actions: [
                            TextButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => login(),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  },
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
