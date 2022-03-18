import 'package:flutter/material.dart';
import 'package:flutter_reddit/theme/theme.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  int get selectedIndex {
    return _selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: background, width: 1)),
        boxShadow: [BoxShadow(blurRadius: 3, color: background)],
      ),
      child: BottomNavigationBar(
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Center(
                child: Icon(
                    _selectedIndex == 0 ? Icons.home : Icons.home_outlined)),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 1 ? Icons.explore : Icons.explore_outlined),
            label: "explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? Icons.add : Icons.add_outlined),
            label: "more",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3
                ? Icons.messenger
                : Icons.messenger_outline),
            label: "messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 4
                ? Icons.notifications
                : Icons.notifications_outlined),
            label: "notifications",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
