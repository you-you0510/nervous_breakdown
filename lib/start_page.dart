import 'package:flutter/material.dart';
import 'package:nervousbreakdown/game_controller.dart';
import 'package:nervousbreakdown/nervous_breakdown_page.dart';
import 'package:nervousbreakdown/play_card.dart';
import 'package:provider/provider.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() {
    return _StartPageState();
  }
}

class _StartPageState extends State<StartPage> {
  double _sliderValue = 1.0;

  @override
  Widget build(BuildContext context) {
    final GameController state =
        context.select((GameController value) => value);

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
            label: '${_sliderValue.toInt()}',
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'I need ${_sliderValue.toInt()} images.',
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
                  builder: (context) {
                    return FutureBuilder(
                      future: state.selectCards(_sliderValue.toInt()),
                      builder: (BuildContext context,
                          AsyncSnapshot<Map<int, PlayCard>> snapshot) {
                        if (snapshot.connectionState != ConnectionState.done) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        //TODO : implement player select widgets and logic
                        state.addPlayer('playerName1');

                        return NervousBreakdownPage();
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
