import 'package:flutter/material.dart';
import 'package:chlutter/providers/game_page_provider.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  final String diffciultyLevel;

  double? _deviceHeight, _deviceWidth;

  GamePage({required this.diffciultyLevel});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold();
  }
}

Widget buildUi() {
  return Scaffold();
}

Widget _question() {
  return const Text(
    "Question",
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    maxLines: 1,
  );
}

Widget _trueButton() {
  return MaterialButton(
    onPressed: () {},
  );
}

Widget _falseButton() {
  return MaterialButton(
    onPressed: () {},
  );
}
