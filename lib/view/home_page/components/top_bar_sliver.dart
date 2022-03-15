


import 'package:flutter/material.dart';

class TopBarSliver extends StatelessWidget {
  final PreferredSizeWidget? content;

  final bool? shouldRetract;

  const TopBarSliver({Key? key, this.content, this.shouldRetract}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: content,
      centerTitle: true,
      automaticallyImplyLeading: false,
      actions: const [SizedBox.shrink()],
      pinned: false,
      floating: true,
      snap:true,
      elevation: 2,
    );
  }
}