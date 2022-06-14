import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );
  AlertDialog alerta = AlertDialog(
    title: Text("E-mail ou senha incorretos"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
