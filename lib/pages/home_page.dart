// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:chlutter/pages/game_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double? _deviceHeight, _deviceWidth;
  double _currentDifficultyLevel = 0;
  final List<String> _difficultyText = ["Easy", "Hard", "Medium"];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

Widget _appTitle() {
  return Column();
}

Widget _difficultySlider() {
  return Slider(
    label: "Difficulty",
    min: 0,
    max: 2,
    divisions: 2,
    // value: _currentDifficultyLevel,
    onChanged: (_value) {}, value: 1,
  );
}

Widget _startGame() {
  return MaterialButton(
    onPressed: () {},
  );
}
