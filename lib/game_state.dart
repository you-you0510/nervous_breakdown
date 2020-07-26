import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nervousbreakdown/play_card.dart';
import 'package:nervousbreakdown/player.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    @Default({}) Map<int, PlayCard> playCards,
    @Default([]) List<Player> players,
    Player currentPlayer,
    PlayCard firstCard,
    PlayCard secondCard,
  }) = _GameState;
}
