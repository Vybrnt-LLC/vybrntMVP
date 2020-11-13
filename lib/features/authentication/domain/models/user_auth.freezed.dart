// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserAuthTearOff {
  const _$UserAuthTearOff();

  _UserAuth call({@required UniqueId id}) {
    return _UserAuth(
      id: id,
    );
  }
}

// ignore: unused_element
const $UserAuth = _$UserAuthTearOff();

mixin _$UserAuth {
  UniqueId get id;

  $UserAuthCopyWith<UserAuth> get copyWith;
}

abstract class $UserAuthCopyWith<$Res> {
  factory $UserAuthCopyWith(UserAuth value, $Res Function(UserAuth) then) =
      _$UserAuthCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

class _$UserAuthCopyWithImpl<$Res> implements $UserAuthCopyWith<$Res> {
  _$UserAuthCopyWithImpl(this._value, this._then);

  final UserAuth _value;
  // ignore: unused_field
  final $Res Function(UserAuth) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

abstract class _$UserAuthCopyWith<$Res> implements $UserAuthCopyWith<$Res> {
  factory _$UserAuthCopyWith(_UserAuth value, $Res Function(_UserAuth) then) =
      __$UserAuthCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

class __$UserAuthCopyWithImpl<$Res> extends _$UserAuthCopyWithImpl<$Res>
    implements _$UserAuthCopyWith<$Res> {
  __$UserAuthCopyWithImpl(_UserAuth _value, $Res Function(_UserAuth) _then)
      : super(_value, (v) => _then(v as _UserAuth));

  @override
  _UserAuth get _value => super._value as _UserAuth;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_UserAuth(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

class _$_UserAuth implements _UserAuth {
  const _$_UserAuth({@required this.id}) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'UserAuth(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAuth &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$UserAuthCopyWith<_UserAuth> get copyWith =>
      __$UserAuthCopyWithImpl<_UserAuth>(this, _$identity);
}

abstract class _UserAuth implements UserAuth {
  const factory _UserAuth({@required UniqueId id}) = _$_UserAuth;

  @override
  UniqueId get id;
  @override
  _$UserAuthCopyWith<_UserAuth> get copyWith;
}
