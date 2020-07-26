// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PlayerTearOff {
  const _$PlayerTearOff();

// ignore: unused_element
  _Player call({String name = '', List<PlayCard> myPlayCards = const []}) {
    return _Player(
      name: name,
      myPlayCards: myPlayCards,
    );
  }
}

// ignore: unused_element
const $Player = _$PlayerTearOff();

mixin _$Player {
  String get name;
  List<PlayCard> get myPlayCards;

  $PlayerCopyWith<Player> get copyWith;
}

abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call({String name, List<PlayCard> myPlayCards});
}

class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object name = freezed,
    Object myPlayCards = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      myPlayCards: myPlayCards == freezed
          ? _value.myPlayCards
          : myPlayCards as List<PlayCard>,
    ));
  }
}

abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<PlayCard> myPlayCards});
}

class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object name = freezed,
    Object myPlayCards = freezed,
  }) {
    return _then(_Player(
      name: name == freezed ? _value.name : name as String,
      myPlayCards: myPlayCards == freezed
          ? _value.myPlayCards
          : myPlayCards as List<PlayCard>,
    ));
  }
}

class _$_Player with DiagnosticableTreeMixin implements _Player {
  const _$_Player({this.name = '', this.myPlayCards = const []})
      : assert(name != null),
        assert(myPlayCards != null);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<PlayCard> myPlayCards;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Player(name: $name, myPlayCards: $myPlayCards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Player'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('myPlayCards', myPlayCards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.myPlayCards, myPlayCards) ||
                const DeepCollectionEquality()
                    .equals(other.myPlayCards, myPlayCards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(myPlayCards);

  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);
}

abstract class _Player implements Player {
  const factory _Player({String name, List<PlayCard> myPlayCards}) = _$_Player;

  @override
  String get name;
  @override
  List<PlayCard> get myPlayCards;
  @override
  _$PlayerCopyWith<_Player> get copyWith;
}
