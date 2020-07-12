import 'package:flutter/material.dart';
import 'package:nervousbreakdown/AnimationCardState.dart';

class AnimationCard extends StatefulWidget {
  Image frontImage;

  AnimationCard(this.frontImage) : super();

  AnimationCardState createState() => AnimationCardState();

  void changeFrontImage(Image image) {
    frontImage = image;
  }
}
