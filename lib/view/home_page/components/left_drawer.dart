import 'package:flutter/material.dart';
import 'package:flutter_reddit/provider/user.dart';
import 'package:flutter_reddit/theme/theme.dart';
import 'package:provider/provider.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  bool _expanded = true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const Divider(),
                Theme(
                  data: lightTheme().copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: true,
                    textColor: textColor,
                    collapsedTextColor: textColor,
                    iconColor: lightTextColor,
                    collapsedIconColor: lightTextColor,
                    title: const Text("Vos communautés"),
                    trailing: Icon(
                      _expanded
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_right,
                    ),
                    onExpansionChanged: (expanded) {
                      setState(() {
                        _expanded = expanded;
                      });
                    },
                    children: List<Widget>.generate(
                        context.watch<User>().subscribedSubs.length,
                        (index) => _CommunityItem(
                            name: context
                                .watch<User>()
                                .subscribedSubs[index]
                                .name))
                      ..add(
                        SizedBox(
                          width: double.infinity,
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.library_books_outlined),
                            label: const Text("Flux Personnalisés"),
                          ),
                        ),
                      ),
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.insert_chart_outlined_rounded),
                    label: const Text("Tout"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Créer une communauté"),
            ),
          )
        ],
      ),
    );
  }
}

class _CommunityItem extends StatefulWidget {
  final String name;
  const _CommunityItem({required this.name});
  @override
  State<_CommunityItem> createState() => _CommunityItemState();
}

class _CommunityItemState extends State<_CommunityItem> {
  bool _fav = false;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Padding(
        padding: EdgeInsets.all(2.0),
        child: CircleAvatar(
          radius: 10,
        ),
      ),
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("r/"),
          IconButton(
            onPressed: () {
              setState(() {
                _fav = !_fav;
              });
            },
            icon: Icon(_fav ? Icons.star : Icons.star_border),
          ),
        ],
      ),
    );
  }
}
