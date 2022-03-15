import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final PreferredSizeWidget? bottom;

  const TopBar({Key? key, this.bottom}): preferredSize=const Size.fromHeight(0.0), super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
      floating: true,
      backgroundColor: Colors.grey,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          //TODO
          throw UnimplementedError();
        }),
      title: Container(
        height: 40.0, //TODO: parametric height
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: "Rechercher",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder()
          ),
        )
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.person_pin),
          onPressed: () {//TODO
            throw UnimplementedError();
          }
        )
      ],
      bottom: bottom,
    );
  }
}