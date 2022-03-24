import 'package:flutter/material.dart';
import 'package:flutter_reddit/theme/theme.dart';

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
      title: TextField(
        textInputAction: TextInputAction.search,
        maxLines: 1,
        decoration: InputDecoration(
          labelText: "Rechercher",
          labelStyle: const TextStyle(fontSize: 14),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(5),
            child: Icon(
              Icons.search,
              size: 20,
              color: lightTextColor,
            ),
          ),
          prefixIconConstraints: const BoxConstraints.tightFor(),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
          child: CircleAvatar(
            radius: 15,
            child: IconButton(
              icon: const Icon(
                Icons.person_pin,
                size: 15,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ),
      ],
    );
  }
}
