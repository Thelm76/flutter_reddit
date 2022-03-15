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
      items: [
        BottomNavigationBarItem(icon: Icon(_selectedIndex==0?Icons.home:Icons.home_outlined), label: "home"),
        BottomNavigationBarItem(icon: Icon(_selectedIndex==1?Icons.explore:Icons.explore_outlined), label: "explore"),
        BottomNavigationBarItem(icon: Icon(_selectedIndex==2?Icons.add:Icons.add_outlined), label: "more"),
        BottomNavigationBarItem(icon: Icon(_selectedIndex==3?Icons.messenger:Icons.messenger_outline), label: "messages"),
        BottomNavigationBarItem(icon: Icon(_selectedIndex==4?Icons.notifications:Icons.notifications_outlined), label: "notifications"),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.grey[600],
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}