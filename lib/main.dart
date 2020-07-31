import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:nervousbreakdown/game_controller.dart';
import 'package:nervousbreakdown/game_state.dart';
import 'package:nervousbreakdown/start_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          StateNotifierProvider<GameController, GameState>(
            create: (context) => GameController(),
          ),
        ],
        child: MaterialApp(
          home: MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StartPage();
  }
}
