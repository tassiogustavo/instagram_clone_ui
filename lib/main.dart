import 'package:flutter/material.dart';
import 'package:recriando_instagram/pages/feed.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const FeedPage(),
    );
  }
}
