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
      {bool isFlipped = false, bool isLocked = false, String location = ''}) {
    return _PlayCard(
      isFlipped: isFlipped,
      isLocked: isLocked,
      location: location,
    );
  }
}

// ignore: unused_element
const $PlayCard = _$PlayCardTearOff();

mixin _$PlayCard {
  bool get isFlipped;
  bool get isLocked;
  String get location;

  $PlayCardCopyWith<PlayCard> get copyWith;
}

abstract class $PlayCardCopyWith<$Res> {
  factory $PlayCardCopyWith(PlayCard value, $Res Function(PlayCard) then) =
      _$PlayCardCopyWithImpl<$Res>;
  $Res call({bool isFlipped, bool isLocked, String location});
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
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      isFlipped: isFlipped == freezed ? _value.isFlipped : isFlipped as bool,
      isLocked: isLocked == freezed ? _value.isLocked : isLocked as bool,
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

abstract class _$PlayCardCopyWith<$Res> implements $PlayCardCopyWith<$Res> {
  factory _$PlayCardCopyWith(_PlayCard value, $Res Function(_PlayCard) then) =
      __$PlayCardCopyWithImpl<$Res>;
  @override
  $Res call({bool isFlipped, bool isLocked, String location});
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
    Object location = freezed,
  }) {
    return _then(_PlayCard(
      isFlipped: isFlipped == freezed ? _value.isFlipped : isFlipped as bool,
      isLocked: isLocked == freezed ? _value.isLocked : isLocked as bool,
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

class _$_PlayCard with DiagnosticableTreeMixin implements _PlayCard {
  const _$_PlayCard(
      {this.isFlipped = false, this.isLocked = false, this.location = ''})
      : assert(isFlipped != null),
        assert(isLocked != null),
        assert(location != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isFlipped;
  @JsonKey(defaultValue: false)
  @override
  final bool isLocked;
  @JsonKey(defaultValue: '')
  @override
  final String location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayCard(isFlipped: $isFlipped, isLocked: $isLocked, location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayCard'))
      ..add(DiagnosticsProperty('isFlipped', isFlipped))
      ..add(DiagnosticsProperty('isLocked', isLocked))
      ..add(DiagnosticsProperty('location', location));
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
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFlipped) ^
      const DeepCollectionEquality().hash(isLocked) ^
      const DeepCollectionEquality().hash(location);

  @override
  _$PlayCardCopyWith<_PlayCard> get copyWith =>
      __$PlayCardCopyWithImpl<_PlayCard>(this, _$identity);
}

abstract class _PlayCard implements PlayCard {
  const factory _PlayCard({bool isFlipped, bool isLocked, String location}) =
      _$_PlayCard;

  @override
  bool get isFlipped;
  @override
  bool get isLocked;
  @override
  String get location;
  @override
  _$PlayCardCopyWith<_PlayCard> get copyWith;
}
