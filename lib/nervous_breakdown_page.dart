import 'dart:io';

import 'package:flippable_box/flippable_box.dart';
import 'package:flutter/material.dart';
import 'package:nervousbreakdown/game_controller.dart';
import 'package:nervousbreakdown/play_card.dart';
import 'package:provider/provider.dart';

class NervousBreakdownPage extends StatefulWidget {
  @override
  _NervousBreakdownPageState createState() => _NervousBreakdownPageState();
}

class _NervousBreakdownPageState extends State<NervousBreakdownPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    context.read<GameController>().startGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          context.select((GameController controller) => controller.gameTitle),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: context.select(
                    (GameController controller) => controller.playCards.length),
                itemBuilder: (BuildContext context, int index) {
                  return _flippableBox(index);
                },
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _flippableBox(int index) {
    PlayCard card = context.read<GameController>().playCards[index];

    return ListTile(
      onTap: () => setState(() {
        _onTap(index);
      }),
      title: FlippableBox(
        front: Container(
          height: 250,
          child: Card(
            borderOnForeground: true,
            child: Image.asset('images/Cartie_thinking_icon.png'),
          ),
        ),
        back: Container(
          height: 250,
          child: _backImage(card),
        ),
        isFlipped: card.isFlipped,
      ),
    );
  }

  Widget _backImage(PlayCard card) {
    Image image;

    //TODO: who should concern the type of image?
    switch (card.cardLocation) {
      case CardLocation.onNetwork:
        image = Image.network(card.path);
        break;
      case CardLocation.onAsset:
        image = Image.asset(card.path);
        break;
      case CardLocation.onFile:
        image = Image.file(File(card.path));
        break;
      case CardLocation.onMemory:
        image = Image.memory(card.bytes);
        break;
    }

    return Card(
      borderOnForeground: true,
      child: image,
    );
  }

  void _onTap(int index) {
    GameController notifier = this.context.read<GameController>();

    //no operation when card is locked.
    if (notifier.playCards[index].isLocked) {
      return;
    }

    GameResult result = notifier.openCard(index);

    switch (result) {
      case GameResult.Continue:
        break;
      case GameResult.Matched:
        _openSnackBar();
        break;
      case GameResult.Unmatched:
        _openModalBottomSheet(result);
        break;
      default:
    }
  }

  void _openSnackBar() {
    final SnackBar snackBar = SnackBar(
        content: const Text('You got it!\nKeep it on!!'),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            _scaffoldKey.currentState.removeCurrentSnackBar();
          },
        ));

    this.context.read<GameController>().next();
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  void _openModalBottomSheet(GameResult state) {
    GameController notifier = this.context.read<GameController>();
    String message;

    if (state == GameResult.Matched) {
      message = 'You got it!\nKeep it on!!';
    } else {
      message = 'omg...';
    }

    showModalBottomSheet(
      context: this.context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(message),
        );
      },
    ).whenComplete(
      () => setState(() {
        notifier.next();
      }),
    );
  }
}
