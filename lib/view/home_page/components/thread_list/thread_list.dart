import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_reddit/view/home_page/components/thread_list/thread_card/thread_card.dart';

class ThreadList extends StatefulWidget {
  const ThreadList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ThreadListState();
}

class _ThreadListState extends State<ThreadList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(
          10,
          (index) => ThreadCard(
            cacheKey: Random().nextInt(1000).toString(),
          ),
        ),
      ),
    );
  }
}
