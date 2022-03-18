import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reddit/view/home_page/components/thread_list/thread_card/thread_card_bottom.dart';

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
          const _ThreadCardTop(),
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
          const ThreadCardBottom(),
        ],
      ),
    );
  }
}

class _ThreadCardTop extends StatelessWidget {
  const _ThreadCardTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "r/abcd\n",
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(
                    text: "u/user",
                    style: const TextStyle(fontSize: 12),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  const TextSpan(text: " • 1h"),
                  TextSpan(
                    text: " • s.redd.it",
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
