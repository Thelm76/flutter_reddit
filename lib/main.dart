import 'package:flutter/material.dart';
import 'package:flutter_reddit/provider/user.dart';
import 'package:flutter_reddit/theme/theme.dart';
import 'package:flutter_reddit/view/home_page/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => User()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Reddit',
      theme: lightTheme(),
      home: const HomeScreen(),
    );
  }
}
