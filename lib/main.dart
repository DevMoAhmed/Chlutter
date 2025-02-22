import 'package:flutter/material.dart';
import 'package:chlutter/pages/game_page.dart';
import 'package:chlutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chlutter',
      theme: ThemeData(
        fontFamily: 'ArchitectsDaughter',
        scaffoldBackgroundColor: const Color.fromRGBO(
          31,
          31,
          31,
          1.0,
        ),
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}
