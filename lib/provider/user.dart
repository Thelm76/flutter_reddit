import 'package:faker/faker.dart';
import 'package:flutter/widgets.dart';

import 'subreddit.dart';

class User with ChangeNotifier {
  final _subscribedsubs = List<Subreddit>.generate(
      15, (index) => Subreddit(name: faker.lorem.word()))
    ..sort();

  List<Subreddit> get subscribedSubs => _subscribedsubs;

  void addSubscribedSub(Subreddit sub) {
    _subscribedsubs
      ..add(sub)
      ..sort();
    notifyListeners();
  }
}
