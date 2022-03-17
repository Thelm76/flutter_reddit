import 'package:flutter/material.dart';

class ThreadCardBottom extends StatelessWidget {
  const ThreadCardBottom({Key? key}) : super(key: key);

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
            )
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
