import 'package:flippable_box/flippable_box.dart';
import 'package:flutter/material.dart';
import 'package:nervousbreakdown/play_card.dart';
import 'package:nervousbreakdown/score_controller.dart';
import 'package:provider/provider.dart';

class NervousBreakdownPage extends StatefulWidget {
  @override
  _NervousBreakdownPageState createState() => _NervousBreakdownPageState();
}

class _NervousBreakdownPageState extends State<NervousBreakdownPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('逃げ恥神経衰弱'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Expanded(
            child: new SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    if (index <
                        context.read<ScoreController>().playCards.length) {
                      PlayCard card =
                          context.read<ScoreController>().playCards[index];

                      return GestureDetector(
                        onTap: () => setState(() {
                          _onTap(index);
                        }),
                        child: FlippableBox(
                          front: Container(
                            height: 250,
                            child:
                                Image.asset('images/Cartie_thinking_icon.png'),
                          ),
                          back: Container(
                            height: 250,
                            child: Image.network(
                              card.location,
                            ),
                          ),
                          isFlipped: card.isFlipped,
                        ),
                      );
                    }

                    return null;
                  },
                )),
          ),
        ],
      ),
    );
  }

  void _onTap(int index) {
    ScoreController notifier = this.context.read<ScoreController>();

    //no operation when card is locked.
    if (notifier.playCards[index].isLocked) {
      return;
    }

    GameResult result = notifier.openCard(index);

    switch (result) {
      case GameResult.Continue:
        break;
      case GameResult.Matched:
      case GameResult.Unmatched:
        _openModalBottomSheet(result);
        break;
      default:
    }
  }

  void _openModalBottomSheet(GameResult state) {
    ScoreController notifier = this.context.read<ScoreController>();
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
