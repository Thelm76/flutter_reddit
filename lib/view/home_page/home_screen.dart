import 'package:flutter/material.dart';
import 'package:flutter_reddit/view/home_page/components/right_drawer.dart';
import 'components/thread_list/thread_list.dart';
import 'components/bottom_bar.dart';
import 'components/top_bar.dart';
import 'components/left_drawer.dart' ;


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomBar(),
      drawer: LeftDrawer(),
      endDrawer: RightDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          TopBar(

          ),
          SliverToBoxAdapter(
            child: ThreadList()
          )
        ],
      ),
    );
  }
}