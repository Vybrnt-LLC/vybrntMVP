// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'navbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NavbarEventTearOff {
  const _$NavbarEventTearOff();

  _SetCurrentScreen setCurrentScreen(int index) {
    return _SetCurrentScreen(
      index,
    );
  }

  _Initialize initialize() {
    return const _Initialize();
  }
}

// ignore: unused_element
const $NavbarEvent = _$NavbarEventTearOff();

mixin _$NavbarEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setCurrentScreen(int index),
    @required Result initialize(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setCurrentScreen(int index),
    Result initialize(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result initialize(_Initialize value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setCurrentScreen(_SetCurrentScreen value),
    Result initialize(_Initialize value),
    @required Result orElse(),
  });
}

abstract class $NavbarEventCopyWith<$Res> {
  factory $NavbarEventCopyWith(
          NavbarEvent value, $Res Function(NavbarEvent) then) =
      _$NavbarEventCopyWithImpl<$Res>;
}

class _$NavbarEventCopyWithImpl<$Res> implements $NavbarEventCopyWith<$Res> {
  _$NavbarEventCopyWithImpl(this._value, this._then);

  final NavbarEvent _value;
  // ignore: unused_field
  final $Res Function(NavbarEvent) _then;
}

abstract class _$SetCurrentScreenCopyWith<$Res> {
  factory _$SetCurrentScreenCopyWith(
          _SetCurrentScreen value, $Res Function(_SetCurrentScreen) then) =
      __$SetCurrentScreenCopyWithImpl<$Res>;
  $Res call({int index});
}

class __$SetCurrentScreenCopyWithImpl<$Res>
    extends _$NavbarEventCopyWithImpl<$Res>
    implements _$SetCurrentScreenCopyWith<$Res> {
  __$SetCurrentScreenCopyWithImpl(
      _SetCurrentScreen _value, $Res Function(_SetCurrentScreen) _then)
      : super(_value, (v) => _then(v as _SetCurrentScreen));

  @override
  _SetCurrentScreen get _value => super._value as _SetCurrentScreen;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_SetCurrentScreen(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_SetCurrentScreen implements _SetCurrentScreen {
  const _$_SetCurrentScreen(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NavbarEvent.setCurrentScreen(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetCurrentScreen &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$SetCurrentScreenCopyWith<_SetCurrentScreen> get copyWith =>
      __$SetCurrentScreenCopyWithImpl<_SetCurrentScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setCurrentScreen(int index),
    @required Result initialize(),
  }) {
    assert(setCurrentScreen != null);
    assert(initialize != null);
    return setCurrentScreen(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setCurrentScreen(int index),
    Result initialize(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentScreen != null) {
      return setCurrentScreen(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result initialize(_Initialize value),
  }) {
    assert(setCurrentScreen != null);
    assert(initialize != null);
    return setCurrentScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setCurrentScreen(_SetCurrentScreen value),
    Result initialize(_Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentScreen != null) {
      return setCurrentScreen(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentScreen implements NavbarEvent {
  const factory _SetCurrentScreen(int index) = _$_SetCurrentScreen;

  int get index;
  _$SetCurrentScreenCopyWith<_SetCurrentScreen> get copyWith;
}

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
}

class __$InitializeCopyWithImpl<$Res> extends _$NavbarEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;
}

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'NavbarEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setCurrentScreen(int index),
    @required Result initialize(),
  }) {
    assert(setCurrentScreen != null);
    assert(initialize != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setCurrentScreen(int index),
    Result initialize(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result initialize(_Initialize value),
  }) {
    assert(setCurrentScreen != null);
    assert(initialize != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setCurrentScreen(_SetCurrentScreen value),
    Result initialize(_Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements NavbarEvent {
  const factory _Initialize() = _$_Initialize;
}

class _$NavbarStateTearOff {
  const _$NavbarStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

// ignore: unused_element
const $NavbarState = _$NavbarStateTearOff();

mixin _$NavbarState {}

abstract class $NavbarStateCopyWith<$Res> {
  factory $NavbarStateCopyWith(
          NavbarState value, $Res Function(NavbarState) then) =
      _$NavbarStateCopyWithImpl<$Res>;
}

class _$NavbarStateCopyWithImpl<$Res> implements $NavbarStateCopyWith<$Res> {
  _$NavbarStateCopyWithImpl(this._value, this._then);

  final NavbarState _value;
  // ignore: unused_field
  final $Res Function(NavbarState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$NavbarStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NavbarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Initial implements NavbarState {
  const factory _Initial() = _$_Initial;
}
