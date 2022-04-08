import 'package:flutter/widgets.dart';

class Subreddit with Comparable<Subreddit>, ChangeNotifier {
  bool _fav = false;
  bool get isFav => _fav;

  final String name;

  Subreddit({required this.name});

  void toggleFav() => _fav = !_fav;

  @override
  int compareTo(other) {
    return (_fav
            ? other._fav
                ? 0
                : 2
            : other._fav
                ? -2
                : 0) +
        (name.compareTo(other.name));
  }
}
