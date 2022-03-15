import 'package:flutter/material.dart';

class TopBarSliver extends StatelessWidget {
  final PreferredSizeWidget? content;

  final bool? shouldRetract;

  const TopBarSliver({Key? key, this.content, this.shouldRetract}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 0,
      collapsedHeight: 0,
      expandedHeight: 60,
      flexibleSpace: FlexibleSpaceBar(
        title: content,
        expandedTitleScale: 1,
        centerTitle: true,
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      actions: const [SizedBox.shrink()],
      pinned: true,
      floating: true,
      snap:true,
      forceElevated: true,
      elevation: 2,
    );
  }
}