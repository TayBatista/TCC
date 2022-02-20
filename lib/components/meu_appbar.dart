import 'package:flutter/material.dart';

class MeuAppBar extends StatelessWidget with PreferredSizeWidget {
  const MeuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('ViajaBR'),
      titleTextStyle: const TextStyle(fontSize: 24),
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
