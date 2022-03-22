import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ThreadCard extends StatefulWidget {
  const ThreadCard({
    Key? key,
    required this.cacheKey,
  }) : super(key: key);

  final String cacheKey;

  @override
  State<ThreadCard> createState() => _ThreadCardState();
}

class _ThreadCardState extends State<ThreadCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          _ThreadCardTop(cacheKey: widget.cacheKey + "pic"),
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
              imageUrl: "https://picsum.photos/200/700",
              placeholder: (context, url) => const Center(
                child: SizedBox.square(
                  dimension: 35,
                  child: CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const _ThreadCardBottom(),
        ],
      ),
    );
  }
}

class _ThreadCardTop extends StatelessWidget {
  const _ThreadCardTop({Key? key, required this.cacheKey}) : super(key: key);

  final String cacheKey;

  static const subTextStyle =
      TextStyle(fontWeight: FontWeight.w900, fontSize: 14);
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
                  "https://picsum.photos/128/128",
                  cacheKey: cacheKey,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "r/abcd\n",
                    style: subTextStyle,
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(
                    text: "u/user",
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
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _ThreadCardBottom extends StatelessWidget {
  const _ThreadCardBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_upward_outlined),
              onPressed: () {},
            ),
            const Text("423"),
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_downward_outlined),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox.square(),
        const Icon(Icons.messenger_outline),
        const Text("423"),
        const SizedBox.square(),
        const SizedBox.square(),
        TextButton.icon(
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
