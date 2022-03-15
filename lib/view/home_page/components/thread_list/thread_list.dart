

import 'package:flutter/material.dart';

class ThreadList extends StatefulWidget {
  const ThreadList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ThreadListState();
  
}

class _ThreadListState extends State<ThreadList>{
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
              height: 2000,
              child: Center(
                child: Text("salut")
              ),
            );
  }

}