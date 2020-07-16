import 'package:flutter/material.dart';
import 'CardImageSelection.dart';
import 'CardPage.dart';
import 'AnimationCard.dart';

class CardPageState extends State<CardPage> {

  var cards = {
    '01' : AnimationCard(Image.asset("images/g06_12.jpg")),
    '02' : AnimationCard(Image.asset("images/g06_20.jpg")),
    '03' : AnimationCard(Image.asset("images/g07_09.jpg")),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*
             * トランプを並べる
             */
            cards['01'],
            SizedBox(
              width: 10.0,
            ),
            cards['02'],
            SizedBox(
              width: 10.0,
            ),
            cards['03'],
            RaisedButton(
              child: Text('カード選択'),
              onPressed: _onPressed,
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed() async {
    var file = await CardImageSelection.selectedImageFile();

    AnimationCard(Image.file(file));
    setState(() => this.cards['01'] = AnimationCard(Image.file(file)));
  }
}