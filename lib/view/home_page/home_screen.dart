import 'package:flutter/material.dart';

import 'components/thread_list/thread_list.dart';
import 'components/bottom_bar.dart';
import 'components/top_bar.dart';
import 'components/left_drawer.dart' ;


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(),
      bottomNavigationBar: BottomBar(),
      drawer: LeftDrawer(),
      body: ThreadList(),
    );
  }
}