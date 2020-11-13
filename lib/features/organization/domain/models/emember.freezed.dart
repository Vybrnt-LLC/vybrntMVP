// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'emember.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EMemberTearOff {
  const _$EMemberTearOff();

  _EMember call({@required UniqueId userID, @required String position}) {
    return _EMember(
      userID: userID,
      position: position,
    );
  }
}

// ignore: unused_element
const $EMember = _$EMemberTearOff();

mixin _$EMember {
  UniqueId get userID;
  String get position;

  $EMemberCopyWith<EMember> get copyWith;
}

abstract class $EMemberCopyWith<$Res> {
  factory $EMemberCopyWith(EMember value, $Res Function(EMember) then) =
      _$EMemberCopyWithImpl<$Res>;
  $Res call({UniqueId userID, String position});
}

class _$EMemberCopyWithImpl<$Res> implements $EMemberCopyWith<$Res> {
  _$EMemberCopyWithImpl(this._value, this._then);

  final EMember _value;
  // ignore: unused_field
  final $Res Function(EMember) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
      position: position == freezed ? _value.position : position as String,
    ));
  }
}

abstract class _$EMemberCopyWith<$Res> implements $EMemberCopyWith<$Res> {
  factory _$EMemberCopyWith(_EMember value, $Res Function(_EMember) then) =
      __$EMemberCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId userID, String position});
}

class __$EMemberCopyWithImpl<$Res> extends _$EMemberCopyWithImpl<$Res>
    implements _$EMemberCopyWith<$Res> {
  __$EMemberCopyWithImpl(_EMember _value, $Res Function(_EMember) _then)
      : super(_value, (v) => _then(v as _EMember));

  @override
  _EMember get _value => super._value as _EMember;

  @override
  $Res call({
    Object userID = freezed,
    Object position = freezed,
  }) {
    return _then(_EMember(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
      position: position == freezed ? _value.position : position as String,
    ));
  }
}

class _$_EMember with DiagnosticableTreeMixin implements _EMember {
  const _$_EMember({@required this.userID, @required this.position})
      : assert(userID != null),
        assert(position != null);

  @override
  final UniqueId userID;
  @override
  final String position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EMember(userID: $userID, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EMember'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EMember &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(position);

  @override
  _$EMemberCopyWith<_EMember> get copyWith =>
      __$EMemberCopyWithImpl<_EMember>(this, _$identity);
}

abstract class _EMember implements EMember {
  const factory _EMember(
      {@required UniqueId userID, @required String position}) = _$_EMember;

  @override
  UniqueId get userID;
  @override
  String get position;
  @override
  _$EMemberCopyWith<_EMember> get copyWith;
}
