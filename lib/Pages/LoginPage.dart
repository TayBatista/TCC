import 'package:flutter/material.dart';
import 'package:viajabr_tcc/Pages/Itinerario.dart';
import 'package:viajabr_tcc/Pages/PageUsuario.dart';
import '../components/meu_appbar.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MeuAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                cursorColor: Colors.black,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.black, fontSize: 30),
                decoration: InputDecoration(
                  labelText: "Login",
                  labelStyle: const TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Divider(),
              TextField(
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
              const Divider(),
              ElevatedButton(
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ItinerarioPage()),
                  )
                },
                child: const Text(
                  "Entrar",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const CriaUsuario()),
                  ),
                },
                child: const Text(
                  "É novo por aqui? Cadastre-se!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      decoration: TextDecoration.underline),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  shadowColor: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () => {},
                child: const Text(
                  "Redefinir senha",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      decoration: TextDecoration.underline),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  shadowColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
