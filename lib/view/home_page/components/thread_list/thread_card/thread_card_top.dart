import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ThreadCardTop extends StatelessWidget {
  const ThreadCardTop({Key? key}) : super(key: key);

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
