// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GameStateTearOff {
  const _$GameStateTearOff();

// ignore: unused_element
  _GameState call(
      {Map<int, PlayCard> playCards = const {},
      List<Player> players = const [],
      Player currentPlayer,
      PlayCard firstCard,
      PlayCard secondCard}) {
    return _GameState(
      playCards: playCards,
      players: players,
      currentPlayer: currentPlayer,
      firstCard: firstCard,
      secondCard: secondCard,
    );
  }
}

// ignore: unused_element
const $GameState = _$GameStateTearOff();

mixin _$GameState {
  Map<int, PlayCard> get playCards;
  List<Player> get players;
  Player get currentPlayer;
  PlayCard get firstCard;
  PlayCard get secondCard;

  $GameStateCopyWith<GameState> get copyWith;
}

abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
  $Res call(
      {Map<int, PlayCard> playCards,
      List<Player> players,
      Player currentPlayer,
      PlayCard firstCard,
      PlayCard secondCard});

  $PlayerCopyWith<$Res> get currentPlayer;
  $PlayCardCopyWith<$Res> get firstCard;
  $PlayCardCopyWith<$Res> get secondCard;
}

class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;

  @override
  $Res call({
    Object playCards = freezed,
    Object players = freezed,
    Object currentPlayer = freezed,
    Object firstCard = freezed,
    Object secondCard = freezed,
  }) {
    return _then(_value.copyWith(
      playCards: playCards == freezed
          ? _value.playCards
          : playCards as Map<int, PlayCard>,
      players: players == freezed ? _value.players : players as List<Player>,
      currentPlayer: currentPlayer == freezed
          ? _value.currentPlayer
          : currentPlayer as Player,
      firstCard:
          firstCard == freezed ? _value.firstCard : firstCard as PlayCard,
      secondCard:
          secondCard == freezed ? _value.secondCard : secondCard as PlayCard,
    ));
  }

  @override
  $PlayerCopyWith<$Res> get currentPlayer {
    if (_value.currentPlayer == null) {
      return null;
    }
    return $PlayerCopyWith<$Res>(_value.currentPlayer, (value) {
      return _then(_value.copyWith(currentPlayer: value));
    });
  }

  @override
  $PlayCardCopyWith<$Res> get firstCard {
    if (_value.firstCard == null) {
      return null;
    }
    return $PlayCardCopyWith<$Res>(_value.firstCard, (value) {
      return _then(_value.copyWith(firstCard: value));
    });
  }

  @override
  $PlayCardCopyWith<$Res> get secondCard {
    if (_value.secondCard == null) {
      return null;
    }
    return $PlayCardCopyWith<$Res>(_value.secondCard, (value) {
      return _then(_value.copyWith(secondCard: value));
    });
  }
}

abstract class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(
          _GameState value, $Res Function(_GameState) then) =
      __$GameStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<int, PlayCard> playCards,
      List<Player> players,
      Player currentPlayer,
      PlayCard firstCard,
      PlayCard secondCard});

  @override
  $PlayerCopyWith<$Res> get currentPlayer;
  @override
  $PlayCardCopyWith<$Res> get firstCard;
  @override
  $PlayCardCopyWith<$Res> get secondCard;
}

class __$GameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(_GameState _value, $Res Function(_GameState) _then)
      : super(_value, (v) => _then(v as _GameState));

  @override
  _GameState get _value => super._value as _GameState;

  @override
  $Res call({
    Object playCards = freezed,
    Object players = freezed,
    Object currentPlayer = freezed,
    Object firstCard = freezed,
    Object secondCard = freezed,
  }) {
    return _then(_GameState(
      playCards: playCards == freezed
          ? _value.playCards
          : playCards as Map<int, PlayCard>,
      players: players == freezed ? _value.players : players as List<Player>,
      currentPlayer: currentPlayer == freezed
          ? _value.currentPlayer
          : currentPlayer as Player,
      firstCard:
          firstCard == freezed ? _value.firstCard : firstCard as PlayCard,
      secondCard:
          secondCard == freezed ? _value.secondCard : secondCard as PlayCard,
    ));
  }
}

class _$_GameState with DiagnosticableTreeMixin implements _GameState {
  const _$_GameState(
      {this.playCards = const {},
      this.players = const [],
      this.currentPlayer,
      this.firstCard,
      this.secondCard})
      : assert(playCards != null),
        assert(players != null);

  @JsonKey(defaultValue: const {})
  @override
  final Map<int, PlayCard> playCards;
  @JsonKey(defaultValue: const [])
  @override
  final List<Player> players;
  @override
  final Player currentPlayer;
  @override
  final PlayCard firstCard;
  @override
  final PlayCard secondCard;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState(playCards: $playCards, players: $players, currentPlayer: $currentPlayer, firstCard: $firstCard, secondCard: $secondCard)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState'))
      ..add(DiagnosticsProperty('playCards', playCards))
      ..add(DiagnosticsProperty('players', players))
      ..add(DiagnosticsProperty('currentPlayer', currentPlayer))
      ..add(DiagnosticsProperty('firstCard', firstCard))
      ..add(DiagnosticsProperty('secondCard', secondCard));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameState &&
            (identical(other.playCards, playCards) ||
                const DeepCollectionEquality()
                    .equals(other.playCards, playCards)) &&
            (identical(other.players, players) ||
                const DeepCollectionEquality()
                    .equals(other.players, players)) &&
            (identical(other.currentPlayer, currentPlayer) ||
                const DeepCollectionEquality()
                    .equals(other.currentPlayer, currentPlayer)) &&
            (identical(other.firstCard, firstCard) ||
                const DeepCollectionEquality()
                    .equals(other.firstCard, firstCard)) &&
            (identical(other.secondCard, secondCard) ||
                const DeepCollectionEquality()
                    .equals(other.secondCard, secondCard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playCards) ^
      const DeepCollectionEquality().hash(players) ^
      const DeepCollectionEquality().hash(currentPlayer) ^
      const DeepCollectionEquality().hash(firstCard) ^
      const DeepCollectionEquality().hash(secondCard);

  @override
  _$GameStateCopyWith<_GameState> get copyWith =>
      __$GameStateCopyWithImpl<_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {Map<int, PlayCard> playCards,
      List<Player> players,
      Player currentPlayer,
      PlayCard firstCard,
      PlayCard secondCard}) = _$_GameState;

  @override
  Map<int, PlayCard> get playCards;
  @override
  List<Player> get players;
  @override
  Player get currentPlayer;
  @override
  PlayCard get firstCard;
  @override
  PlayCard get secondCard;
  @override
  _$GameStateCopyWith<_GameState> get copyWith;
}
