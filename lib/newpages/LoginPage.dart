// ignore_for_file: lowercase_with_underscores, unnecessary_const, file_names

import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/InputText.dart';
import 'package:viajabr_tcc/components/LinkLikeButton.dart';
import 'package:viajabr_tcc/components/RedrectionButton.dart';
import 'package:viajabr_tcc/newpages/CreateUserPage.dart';
import 'package:viajabr_tcc/newpages/ItineraryPage.dart';
import '../components/meu_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<LoginPage> {
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MeuAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                InputText(title: 'Login'),
                Divider(),
                InputText(title: 'Senha', obscureText: true),
                Divider(),
                RedrectionButton(
                    text: 'Entrar',
                    nextPage: ItineraryPage(),
                    primary: Colors.red,
                    onPrimary: Colors.white),
                LinkLikeButton(
                    text: "É novo por aqui? Cadastre-se!",
                    nextPage: CreateUserPage()),
                LinkLikeButton(
                    text: "Redefinir senha", nextPage: CreateUserPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
