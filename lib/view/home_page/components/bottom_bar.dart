import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  int get selectedIndex {return _selectedIndex;}


  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "explore"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "more"),
        BottomNavigationBarItem(icon: Icon(Icons.messenger_outline), label: "messages"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: "notifications"),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}