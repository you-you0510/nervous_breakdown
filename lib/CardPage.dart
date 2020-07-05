import 'package:flutter/material.dart';
import 'package:nervousbreakdown/AnimationCard.dart';

class CardPage extends StatelessWidget {
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
            AnimationCard(
              Image.asset(
                "images/g06_12.jpg",
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            AnimationCard(
              Image.asset(
                "images/g06_20.jpg",
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            AnimationCard(
              Image.asset(
                "images/g07_09.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
