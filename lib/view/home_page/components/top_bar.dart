import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  const TopBar({Key? key}): preferredSize=const Size.fromHeight(60.0), super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        }),
      title: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          labelText: "Rechercher",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder()
        )
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person_pin),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          }
        )
      ],
    );
  }
}