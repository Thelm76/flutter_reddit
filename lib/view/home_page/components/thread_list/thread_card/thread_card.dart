import 'package:flutter/material.dart';
import 'package:flutter_reddit/view/home_page/components/thread_list/thread_card/thread_card_bottom.dart';
import 'package:flutter_reddit/view/home_page/components/thread_list/thread_card/thread_card_top.dart';

class ThreadCard extends StatefulWidget {
  const ThreadCard({Key? key}) : super(key: key);

  @override
  State<ThreadCard> createState() => _ThreadCardState();
}

class _ThreadCardState extends State<ThreadCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: const [
          Placeholder(
            fallbackHeight: 50,
          ),
          Placeholder(
            fallbackHeight: 200,
          ),
          ThreadCardBottom()
        ],
      ),
    );
  }
}
