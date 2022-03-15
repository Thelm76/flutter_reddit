import 'package:flutter/material.dart';
import 'package:flutter_reddit/view/home_page/components/right_drawer.dart';
import 'components/thread_list/thread_list.dart';
import 'components/bottom_bar.dart';
import 'components/top_bar.dart';
import 'components/left_drawer.dart' ;
import 'components/top_bar_sliver.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

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
      bottomNavigationBar: BottomBar(),
      appBar: TopBar(),
      drawer: LeftDrawer(),
      endDrawer: RightDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          TopBarSliver(content: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: "Accueil",),
              Tab(text: "r/popular")
            ])
          ),
          const SliverToBoxAdapter(
            child: ThreadList()
          )
        ],
      ),
    );
  }
}