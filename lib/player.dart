import 'package:flutter/foundation.dart'; //
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nervousbreakdown/play_card.dart';

part 'player.freezed.dart';

@freezed
abstract class Player with _$Player {
  const factory Player({
    @Default('') String name,
    @Default([]) List<PlayCard> myPlayCards,
  }) = _Player;
}
