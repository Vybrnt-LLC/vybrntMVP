// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'channel_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChannelUserTearOff {
  const _$ChannelUserTearOff();

  _ChannelUser call({@required UniqueId channelUserID, @required bool RSVP}) {
    return _ChannelUser(
      channelUserID: channelUserID,
      RSVP: RSVP,
    );
  }
}

// ignore: unused_element
const $ChannelUser = _$ChannelUserTearOff();

mixin _$ChannelUser {
  UniqueId get channelUserID;
  bool get RSVP;

  $ChannelUserCopyWith<ChannelUser> get copyWith;
}

abstract class $ChannelUserCopyWith<$Res> {
  factory $ChannelUserCopyWith(
          ChannelUser value, $Res Function(ChannelUser) then) =
      _$ChannelUserCopyWithImpl<$Res>;
  $Res call({UniqueId channelUserID, bool RSVP});
}

class _$ChannelUserCopyWithImpl<$Res> implements $ChannelUserCopyWith<$Res> {
  _$ChannelUserCopyWithImpl(this._value, this._then);

  final ChannelUser _value;
  // ignore: unused_field
  final $Res Function(ChannelUser) _then;

  @override
  $Res call({
    Object channelUserID = freezed,
    Object RSVP = freezed,
  }) {
    return _then(_value.copyWith(
      channelUserID: channelUserID == freezed
          ? _value.channelUserID
          : channelUserID as UniqueId,
      RSVP: RSVP == freezed ? _value.RSVP : RSVP as bool,
    ));
  }
}

abstract class _$ChannelUserCopyWith<$Res>
    implements $ChannelUserCopyWith<$Res> {
  factory _$ChannelUserCopyWith(
          _ChannelUser value, $Res Function(_ChannelUser) then) =
      __$ChannelUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId channelUserID, bool RSVP});
}

class __$ChannelUserCopyWithImpl<$Res> extends _$ChannelUserCopyWithImpl<$Res>
    implements _$ChannelUserCopyWith<$Res> {
  __$ChannelUserCopyWithImpl(
      _ChannelUser _value, $Res Function(_ChannelUser) _then)
      : super(_value, (v) => _then(v as _ChannelUser));

  @override
  _ChannelUser get _value => super._value as _ChannelUser;

  @override
  $Res call({
    Object channelUserID = freezed,
    Object RSVP = freezed,
  }) {
    return _then(_ChannelUser(
      channelUserID: channelUserID == freezed
          ? _value.channelUserID
          : channelUserID as UniqueId,
      RSVP: RSVP == freezed ? _value.RSVP : RSVP as bool,
    ));
  }
}

class _$_ChannelUser with DiagnosticableTreeMixin implements _ChannelUser {
  const _$_ChannelUser({@required this.channelUserID, @required this.RSVP})
      : assert(channelUserID != null),
        assert(RSVP != null);

  @override
  final UniqueId channelUserID;
  @override
  final bool RSVP;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChannelUser(channelUserID: $channelUserID, RSVP: $RSVP)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChannelUser'))
      ..add(DiagnosticsProperty('channelUserID', channelUserID))
      ..add(DiagnosticsProperty('RSVP', RSVP));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelUser &&
            (identical(other.channelUserID, channelUserID) ||
                const DeepCollectionEquality()
                    .equals(other.channelUserID, channelUserID)) &&
            (identical(other.RSVP, RSVP) ||
                const DeepCollectionEquality().equals(other.RSVP, RSVP)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(channelUserID) ^
      const DeepCollectionEquality().hash(RSVP);

  @override
  _$ChannelUserCopyWith<_ChannelUser> get copyWith =>
      __$ChannelUserCopyWithImpl<_ChannelUser>(this, _$identity);
}

abstract class _ChannelUser implements ChannelUser {
  const factory _ChannelUser(
      {@required UniqueId channelUserID, @required bool RSVP}) = _$_ChannelUser;

  @override
  UniqueId get channelUserID;
  @override
  bool get RSVP;
  @override
  _$ChannelUserCopyWith<_ChannelUser> get copyWith;
}
