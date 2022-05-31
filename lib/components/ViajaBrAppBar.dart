// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../newpages/LoginPage.dart';

class ViajaBrAppBar extends StatelessWidget with PreferredSizeWidget {
  const ViajaBrAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('ViajaBR'),
      titleTextStyle: const TextStyle(fontSize: 26),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            iconSize: 30,
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        PopupMenuButton<int>(
          icon: const Icon(Icons.menu),
          iconSize: 30,
          onSelected: (item) => onSelected(context, item),
          itemBuilder: (context) => [
            const PopupMenuItem<int>(
              value: 0,
              child: Text('Criar itinerário'),
              textStyle: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.purple],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
      elevation: 10,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
      break;
  }
}
