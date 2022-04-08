import 'package:flutter/material.dart';
import 'package:flutter_reddit/theme/theme.dart';
import 'package:flutter_reddit/view/home_page/components/right_drawer.dart';
import '../Utils/thread_list/thread_list.dart';
import 'components/bottom_bar.dart';
import 'components/top_bar.dart';
import 'components/left_drawer.dart';
import 'components/top_bar_sliver.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      appBar: const TopBar(),
      extendBodyBehindAppBar: true,
      drawer: const LeftDrawer(),
      endDrawer: const RightDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          TopBarSliver(
            content: TabBar(
              isScrollable: true,
              indicatorColor: secondaryColor,
              controller: _tabController,
              tabs: const [
                Tab(text: "Accueil", height: 40),
                Tab(text: "r/popular", height: 40),
              ],
            ),
          ),
          const ThreadList(),
        ],
      ),
    );
  }
}
