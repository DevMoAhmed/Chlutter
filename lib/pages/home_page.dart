// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables

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
  final List<String> _difficultyText = ["Easy", "Medium", "Hard"];

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth! * 0.10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _appTitle(),
              _difficultySlider(),
              _startGame(),
            ],
          ),
        ),
      )),
    );
  }

////////////////////////////////////////////////////////////////////////
//🔤
  Widget _appTitle() {
    return Column(children: [
      const Text(
        "Monday",
        style: TextStyle(
          color: Colors.white,
          fontSize: 60,
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        _difficultyText[_currentDifficultyLevel.toInt()],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      )
    ]);
  }

/////////////////////////////////////////////////////////////////////////////
//🎚️
  Widget _difficultySlider() {
    return Slider(
      label: "Difficulty",
      min: 0,
      max: 2,
      divisions: 2,
      value: _currentDifficultyLevel,
      onChanged: (_value) {
        setState(
          () {
            _currentDifficultyLevel = _value;
          },
        );
      },
    );
  }

//////////////////////////////////////////////////////////////////////////////
//▶️
  Widget _startGame() {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext _context) {
              return GamePage(
                diffciultyLevel:
                    _difficultyText[_currentDifficultyLevel.toInt()]
                        .toLowerCase(),
              );
            },
          ),
        );
      },
      color: Colors.purple,
      minWidth: _deviceWidth! * 0.8,
      height: _deviceHeight! * 0.1,
      child: const Text(
        "Start Game",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
