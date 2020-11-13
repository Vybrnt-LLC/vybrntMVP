// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserFailureTearOff {
  const _$UserFailureTearOff();

  _LoadFailed loadFailed() {
    return const _LoadFailed();
  }
}

// ignore: unused_element
const $UserFailure = _$UserFailureTearOff();

mixin _$UserFailure {}

abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
}

class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;
}

abstract class _$LoadFailedCopyWith<$Res> {
  factory _$LoadFailedCopyWith(
          _LoadFailed value, $Res Function(_LoadFailed) then) =
      __$LoadFailedCopyWithImpl<$Res>;
}

class __$LoadFailedCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements _$LoadFailedCopyWith<$Res> {
  __$LoadFailedCopyWithImpl(
      _LoadFailed _value, $Res Function(_LoadFailed) _then)
      : super(_value, (v) => _then(v as _LoadFailed));

  @override
  _LoadFailed get _value => super._value as _LoadFailed;
}

class _$_LoadFailed implements _LoadFailed {
  const _$_LoadFailed();

  @override
  String toString() {
    return 'UserFailure.loadFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadFailed implements UserFailure {
  const factory _LoadFailed() = _$_LoadFailed;
}
