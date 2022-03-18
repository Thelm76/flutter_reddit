import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  const TopBar({Key? key})
      : preferredSize = const Size.fromHeight(55.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: const TextField(
        maxLines: 1,
        decoration: InputDecoration(
          labelText: "Rechercher",
          prefixIcon: Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.search, size: 20),
          ),
          prefixIconConstraints: BoxConstraints.tightFor(),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person_pin),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }
}
