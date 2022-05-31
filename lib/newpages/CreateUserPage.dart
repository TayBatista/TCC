// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:viajabr_tcc/components/InputText.dart';
import 'package:viajabr_tcc/components/RedrectionButton.dart';
import 'package:viajabr_tcc/newpages/LoginPage.dart';
import '../components/ViajaBrAppBar.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({Key? key}) : super(key: key);

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ViajaBrAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              InputText(title: 'Nome'),
              Divider(),
              InputText(title: 'Sobrenome'),
              Divider(),
              InputText(title: 'E-mail'),
              Divider(),
              InputText(title: 'Senha', obscureText: true),
              Divider(),
              RedrectionButton(
                  text: 'Cadastrar',
                  nextPage: LoginPage(),
                  primary: Colors.red,
                  onPrimary: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
