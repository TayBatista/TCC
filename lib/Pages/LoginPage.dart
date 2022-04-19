import 'package:flutter/material.dart';
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
                    borderSide: const BorderSide(color: Colors.white),
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
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                onPressed: () => {
                  // ignore: avoid_print
                  print("Pressione o botão"),
                },
                child: const Text(
                  "Entrar",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
