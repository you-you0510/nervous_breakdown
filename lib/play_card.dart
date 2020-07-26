import 'package:flutter/foundation.dart'; //
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_card.freezed.dart';

@freezed
abstract class PlayCard with _$PlayCard {
  const factory PlayCard({
    @Default(false) bool isFlipped,
    @Default(false) bool isLocked,
    @Default('') String location,
  }) = _PlayCard;
}
