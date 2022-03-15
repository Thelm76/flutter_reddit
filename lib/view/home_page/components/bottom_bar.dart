import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.abc), label:"abc"),
      BottomNavigationBarItem(icon: Icon(Icons.abc), label:"abc"),
    ]);
  }

  
}