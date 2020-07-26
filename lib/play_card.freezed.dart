// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'play_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PlayCardTearOff {
  const _$PlayCardTearOff();

// ignore: unused_element
  _PlayCard call(
      {bool isFlipped = false,
      bool isLocked = false,
      String path = '',
      Uint8List bytes,
      CardLocation cardLocation}) {
    return _PlayCard(
      isFlipped: isFlipped,
      isLocked: isLocked,
      path: path,
      bytes: bytes,
      cardLocation: cardLocation,
    );
  }
}

// ignore: unused_element
const $PlayCard = _$PlayCardTearOff();

mixin _$PlayCard {
  bool get isFlipped;
  bool get isLocked;
  String get path;
  Uint8List get bytes;
  CardLocation get cardLocation;

  $PlayCardCopyWith<PlayCard> get copyWith;
}

abstract class $PlayCardCopyWith<$Res> {
  factory $PlayCardCopyWith(PlayCard value, $Res Function(PlayCard) then) =
      _$PlayCardCopyWithImpl<$Res>;
  $Res call(
      {bool isFlipped,
      bool isLocked,
      String path,
      Uint8List bytes,
      CardLocation cardLocation});
}

class _$PlayCardCopyWithImpl<$Res> implements $PlayCardCopyWith<$Res> {
  _$PlayCardCopyWithImpl(this._value, this._then);

  final PlayCard _value;
  // ignore: unused_field
  final $Res Function(PlayCard) _then;

  @override
  $Res call({
    Object isFlipped = freezed,
    Object isLocked = freezed,
    Object path = freezed,
    Object bytes = freezed,
    Object cardLocation = freezed,
  }) {
    return _then(_value.copyWith(
      isFlipped: isFlipped == freezed ? _value.isFlipped : isFlipped as bool,
      isLocked: isLocked == freezed ? _value.isLocked : isLocked as bool,
      path: path == freezed ? _value.path : path as String,
      bytes: bytes == freezed ? _value.bytes : bytes as Uint8List,
      cardLocation: cardLocation == freezed
          ? _value.cardLocation
          : cardLocation as CardLocation,
    ));
  }
}

abstract class _$PlayCardCopyWith<$Res> implements $PlayCardCopyWith<$Res> {
  factory _$PlayCardCopyWith(_PlayCard value, $Res Function(_PlayCard) then) =
      __$PlayCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFlipped,
      bool isLocked,
      String path,
      Uint8List bytes,
      CardLocation cardLocation});
}

class __$PlayCardCopyWithImpl<$Res> extends _$PlayCardCopyWithImpl<$Res>
    implements _$PlayCardCopyWith<$Res> {
  __$PlayCardCopyWithImpl(_PlayCard _value, $Res Function(_PlayCard) _then)
      : super(_value, (v) => _then(v as _PlayCard));

  @override
  _PlayCard get _value => super._value as _PlayCard;

  @override
  $Res call({
    Object isFlipped = freezed,
    Object isLocked = freezed,
    Object path = freezed,
    Object bytes = freezed,
    Object cardLocation = freezed,
  }) {
    return _then(_PlayCard(
      isFlipped: isFlipped == freezed ? _value.isFlipped : isFlipped as bool,
      isLocked: isLocked == freezed ? _value.isLocked : isLocked as bool,
      path: path == freezed ? _value.path : path as String,
      bytes: bytes == freezed ? _value.bytes : bytes as Uint8List,
      cardLocation: cardLocation == freezed
          ? _value.cardLocation
          : cardLocation as CardLocation,
    ));
  }
}

class _$_PlayCard with DiagnosticableTreeMixin implements _PlayCard {
  const _$_PlayCard(
      {this.isFlipped = false,
      this.isLocked = false,
      this.path = '',
      this.bytes,
      this.cardLocation})
      : assert(isFlipped != null),
        assert(isLocked != null),
        assert(path != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isFlipped;
  @JsonKey(defaultValue: false)
  @override
  final bool isLocked;
  @JsonKey(defaultValue: '')
  @override
  final String path;
  @override
  final Uint8List bytes;
  @override
  final CardLocation cardLocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayCard(isFlipped: $isFlipped, isLocked: $isLocked, path: $path, bytes: $bytes, cardLocation: $cardLocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayCard'))
      ..add(DiagnosticsProperty('isFlipped', isFlipped))
      ..add(DiagnosticsProperty('isLocked', isLocked))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('bytes', bytes))
      ..add(DiagnosticsProperty('cardLocation', cardLocation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayCard &&
            (identical(other.isFlipped, isFlipped) ||
                const DeepCollectionEquality()
                    .equals(other.isFlipped, isFlipped)) &&
            (identical(other.isLocked, isLocked) ||
                const DeepCollectionEquality()
                    .equals(other.isLocked, isLocked)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.bytes, bytes) ||
                const DeepCollectionEquality().equals(other.bytes, bytes)) &&
            (identical(other.cardLocation, cardLocation) ||
                const DeepCollectionEquality()
                    .equals(other.cardLocation, cardLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFlipped) ^
      const DeepCollectionEquality().hash(isLocked) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(bytes) ^
      const DeepCollectionEquality().hash(cardLocation);

  @override
  _$PlayCardCopyWith<_PlayCard> get copyWith =>
      __$PlayCardCopyWithImpl<_PlayCard>(this, _$identity);
}

abstract class _PlayCard implements PlayCard {
  const factory _PlayCard(
      {bool isFlipped,
      bool isLocked,
      String path,
      Uint8List bytes,
      CardLocation cardLocation}) = _$_PlayCard;

  @override
  bool get isFlipped;
  @override
  bool get isLocked;
  @override
  String get path;
  @override
  Uint8List get bytes;
  @override
  CardLocation get cardLocation;
  @override
  _$PlayCardCopyWith<_PlayCard> get copyWith;
}
