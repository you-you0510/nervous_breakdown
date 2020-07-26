import 'dart:typed_data';

import 'package:flutter/foundation.dart'; //
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_card.freezed.dart';

enum CardLocation {
  onNetwork,
  onAsset,
  onFile,
  onMemory,
}

@freezed
abstract class PlayCard with _$PlayCard {
  const factory PlayCard({
    @Default(false) bool isFlipped,
    @Default(false) bool isLocked,
    @Default('') String path,
    Uint8List bytes,
    CardLocation cardLocation,
  }) = _PlayCard;
}
