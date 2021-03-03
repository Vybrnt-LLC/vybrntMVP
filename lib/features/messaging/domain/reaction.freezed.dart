// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReactionTearOff {
  const _$ReactionTearOff();

  _Reaction call(
      {@required UniqueId userID,
      @required String userName,
      @required String emoji,
      @required DateTime timeStamp}) {
    return _Reaction(
      userID: userID,
      userName: userName,
      emoji: emoji,
      timeStamp: timeStamp,
    );
  }
}

// ignore: unused_element
const $Reaction = _$ReactionTearOff();

mixin _$Reaction {
  UniqueId get userID;
  String get userName;
  String get emoji;
  DateTime get timeStamp;

  $ReactionCopyWith<Reaction> get copyWith;
}

abstract class $ReactionCopyWith<$Res> {
  factory $ReactionCopyWith(Reaction value, $Res Function(Reaction) then) =
      _$ReactionCopyWithImpl<$Res>;
  $Res call(
      {UniqueId userID, String userName, String emoji, DateTime timeStamp});
}

class _$ReactionCopyWithImpl<$Res> implements $ReactionCopyWith<$Res> {
  _$ReactionCopyWithImpl(this._value, this._then);

  final Reaction _value;
  // ignore: unused_field
  final $Res Function(Reaction) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object userName = freezed,
    Object emoji = freezed,
    Object timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
      userName: userName == freezed ? _value.userName : userName as String,
      emoji: emoji == freezed ? _value.emoji : emoji as String,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
    ));
  }
}

abstract class _$ReactionCopyWith<$Res> implements $ReactionCopyWith<$Res> {
  factory _$ReactionCopyWith(_Reaction value, $Res Function(_Reaction) then) =
      __$ReactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId userID, String userName, String emoji, DateTime timeStamp});
}

class __$ReactionCopyWithImpl<$Res> extends _$ReactionCopyWithImpl<$Res>
    implements _$ReactionCopyWith<$Res> {
  __$ReactionCopyWithImpl(_Reaction _value, $Res Function(_Reaction) _then)
      : super(_value, (v) => _then(v as _Reaction));

  @override
  _Reaction get _value => super._value as _Reaction;

  @override
  $Res call({
    Object userID = freezed,
    Object userName = freezed,
    Object emoji = freezed,
    Object timeStamp = freezed,
  }) {
    return _then(_Reaction(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
      userName: userName == freezed ? _value.userName : userName as String,
      emoji: emoji == freezed ? _value.emoji : emoji as String,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
    ));
  }
}

class _$_Reaction with DiagnosticableTreeMixin implements _Reaction {
  const _$_Reaction(
      {@required this.userID,
      @required this.userName,
      @required this.emoji,
      @required this.timeStamp})
      : assert(userID != null),
        assert(userName != null),
        assert(emoji != null),
        assert(timeStamp != null);

  @override
  final UniqueId userID;
  @override
  final String userName;
  @override
  final String emoji;
  @override
  final DateTime timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reaction(userID: $userID, userName: $userName, emoji: $emoji, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reaction'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('emoji', emoji))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reaction &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.emoji, emoji) ||
                const DeepCollectionEquality().equals(other.emoji, emoji)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(emoji) ^
      const DeepCollectionEquality().hash(timeStamp);

  @override
  _$ReactionCopyWith<_Reaction> get copyWith =>
      __$ReactionCopyWithImpl<_Reaction>(this, _$identity);
}

abstract class _Reaction implements Reaction {
  const factory _Reaction(
      {@required UniqueId userID,
      @required String userName,
      @required String emoji,
      @required DateTime timeStamp}) = _$_Reaction;

  @override
  UniqueId get userID;
  @override
  String get userName;
  @override
  String get emoji;
  @override
  DateTime get timeStamp;
  @override
  _$ReactionCopyWith<_Reaction> get copyWith;
}
