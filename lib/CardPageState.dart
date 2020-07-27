import 'package:flutter/material.dart';
import 'package:nervousbreakdown/AnimationCardRepository.dart';
import 'CardImageSelection.dart';
import 'CardPage.dart';
import 'AnimationCard.dart';

class CardPageState extends State<CardPage> {

  var cards = {
    AnimationCard(Image.asset("images/g06_12.jpg")),
    AnimationCard(Image.asset("images/g06_20.jpg")),
    AnimationCard(Image.asset("images/g07_09.jpg"))
  };

  @override
  Widget build(BuildContext context) {
    var contentWidgets = _makeWidgets();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: contentWidgets
        ),
      ),
    );
  }

  List<Widget> _makeWidgets() {
    var widgets = List<Widget>();

    // カード、カード間の隙間
    cards.forEach((value) {
      widgets.add(value);
      widgets.add(SizedBox(width: 10.0));
    });

    // カード変更ボタン
    var button = RaisedButton(child: Text('カード変更'), onPressed: _onPressed);
    widgets.add(button);

    return widgets;
  }

  void _onPressed() async {
    var r = new AnimationCardRepository();
    var cards = await r.drawAtRandom(3);
    _replaceAllCards(cards);
  }

  void _replaceAllCards(List<AnimationCard> replace) async {
    assert(replace != null);

    this.cards.clear();
    setState(() => this.cards.addAll(replace));
  }

  /*
  * 選択したカードを追加する（※）未使用
  */
  void _changeCard() async {
    // ファイル選択(ユーザが選ぶまで待つ)
    var file = await CardImageSelection.selectedImageFile();

    // 未選択の場合、NOP
    if(file == null){return;}

    // 選択されていたら、一枚目を差し替え
    var card = AnimationCard(Image.file(file));
    setState(() => this.cards.add(card));
  }
}