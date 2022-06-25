import 'package:Viajabr/components/meu_appbar.dart';
import 'package:flutter/material.dart';
import 'package:Viajabr/Pages/Itinerario.dart';
import 'package:Viajabr/Pages/PageUsuario.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    var email;
    var senha;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MeuAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (text) {
                  email = text;
                },
                cursorColor: Colors.black,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
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
              const Divider(),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
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
                  if (email == 'teste@gmail.com' && senha == '123')
                    {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => ItinerarioPage()),
                          (Route<dynamic> route) => false),
                    }
                  else
                    {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("E-mail ou senha incorretos"),
                            actions: [
                              TextButton(
                                child: Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    },
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
            ],
          ),
        ),
      ),
    );
  }
}
