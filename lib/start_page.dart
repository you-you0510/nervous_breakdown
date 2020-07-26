import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:nervousbreakdown/game_controller.dart';
import 'package:nervousbreakdown/game_state.dart';
import 'package:nervousbreakdown/nervous_breakdown_page.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  double _sliderValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: Text('How may images do you need?'),
          ),
          Slider.adaptive(
            value: _sliderValue,
            min: 1.0,
            max: 25.0,
            divisions: 25,
            label: '${_sliderValue.truncate()}',
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'I need ${_sliderValue.truncate()} images.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            iconSize: 100,
            color: Colors.blue,
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      StateNotifierProvider<GameController, GameState>(
                    create: (context) =>
                        //sliderの選択値をstateNotifierに渡す
                        GameController(_sliderValue.toInt()),
                    child: NervousBreakdownPage(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
