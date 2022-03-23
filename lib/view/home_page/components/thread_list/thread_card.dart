import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reddit/theme/theme.dart';
import 'package:intl/intl.dart';

class ThreadCard extends StatefulWidget {
  ThreadCard({
    Key? key,
    required this.cacheKey,
  }) : super(key: key);

  final String cacheKey;
  late final String profilePic = faker.image.image(
    random: true,
    keywords: ["profile"],
  );
  final String userName = faker.internet.userName();
  final String subreddit = faker.lorem.word();
  late final String picture = faker.image.image(
    random: true,
    keywords: [subreddit],
  );
  final int ups = Random().nextInt(1 << 16);
  final int reacts = Random().nextInt(1 << 15);

  @override
  State<ThreadCard> createState() => _ThreadCardState();
}

class _ThreadCardState extends State<ThreadCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          _ThreadCardTop(
            cacheKey: widget.cacheKey + "pp",
            profilePic: widget.profilePic,
            userName: widget.userName,
            subReddit: widget.subreddit,
          ),
          Container(
            constraints: const BoxConstraints(
              maxHeight: 400,
              maxWidth: double.infinity,
              minHeight: 200,
              minWidth: double.infinity,
            ),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              cacheKey: widget.cacheKey,
              imageUrl: widget.picture,
              placeholder: (context, url) => const Center(
                child: SizedBox.square(
                  dimension: 35,
                  child: CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          _ThreadCardBottom(widget.ups, widget.reacts),
        ],
      ),
    );
  }
}

class _ThreadCardTop extends StatelessWidget {
  const _ThreadCardTop({
    Key? key,
    required this.cacheKey,
    required this.profilePic,
    required this.userName,
    required this.subReddit,
  }) : super(key: key);

  final String cacheKey;
  final String profilePic;
  final String userName;
  final String subReddit;

  static const subTextStyle = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 12.5,
  );
  static const userTextStyle = TextStyle(fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16, end: 8),
              child: CircleAvatar(
                radius: 16,
                backgroundColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: IconButton(
                  iconSize: 16,
                  icon: const Icon(Icons.person),
                  color: Colors.white,
                  onPressed: () {},
                ),
                foregroundImage: CachedNetworkImageProvider(
                  profilePic,
                  cacheKey: cacheKey,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "r/$subReddit\n",
                    style: subTextStyle,
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(
                    text: "u/$userName",
                    style: userTextStyle,
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  const TextSpan(
                    text: " • 1h",
                    style: userTextStyle,
                  ),
                  TextSpan(
                    text: " • s.redd.it",
                    style: userTextStyle,
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            )
          ],
        ),
        TextButton(
          child: const Text("Rejoindre"),
          onPressed: () {},
        ),
        IconButton(
          iconSize: 20,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
          ),
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _ThreadCardBottom extends StatelessWidget {
  _ThreadCardBottom(this.ups, this.reacts, {Key? key}) : super(key: key);
  final f = NumberFormat.compact(locale: "fr");
  final int reacts;
  final int ups;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            IconButton(
              splashRadius: 20,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
              ),
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_upward_outlined),
              onPressed: () {},
            ),
            Text(f.format(ups), textWidthBasis: TextWidthBasis.parent),
            IconButton(
              splashRadius: 20,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
              ),
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_downward_outlined),
              onPressed: () {},
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            const Icon(Icons.messenger_outline),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8.0),
              child: Text(f.format(reacts)),
            ),
          ],
        ),
        const Spacer(),
        TextButton.icon(
          style: TextButton.styleFrom(primary: lightTextColor),
          icon: const Icon(Icons.share_outlined),
          label: const Text("Partager"),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.card_giftcard_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}
