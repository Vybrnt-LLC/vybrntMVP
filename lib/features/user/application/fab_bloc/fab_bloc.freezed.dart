// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FabEventTearOff {
  const _$FabEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SetCurrentScreen setCurrentScreen(String screenName) {
    return _SetCurrentScreen(
      screenName,
    );
  }
}

// ignore: unused_element
const $FabEvent = _$FabEventTearOff();

mixin _$FabEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result setCurrentScreen(String screenName),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result setCurrentScreen(String screenName),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result setCurrentScreen(_SetCurrentScreen value),
    @required Result orElse(),
  });
}

abstract class $FabEventCopyWith<$Res> {
  factory $FabEventCopyWith(FabEvent value, $Res Function(FabEvent) then) =
      _$FabEventCopyWithImpl<$Res>;
}

class _$FabEventCopyWithImpl<$Res> implements $FabEventCopyWith<$Res> {
  _$FabEventCopyWithImpl(this._value, this._then);

  final FabEvent _value;
  // ignore: unused_field
  final $Res Function(FabEvent) _then;
}

abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

class __$StartedCopyWithImpl<$Res> extends _$FabEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'FabEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result setCurrentScreen(String screenName),
  }) {
    assert(started != null);
    assert(setCurrentScreen != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result setCurrentScreen(String screenName),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
  }) {
    assert(started != null);
    assert(setCurrentScreen != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result setCurrentScreen(_SetCurrentScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FabEvent {
  const factory _Started() = _$_Started;
}

abstract class _$SetCurrentScreenCopyWith<$Res> {
  factory _$SetCurrentScreenCopyWith(
          _SetCurrentScreen value, $Res Function(_SetCurrentScreen) then) =
      __$SetCurrentScreenCopyWithImpl<$Res>;
  $Res call({String screenName});
}

class __$SetCurrentScreenCopyWithImpl<$Res> extends _$FabEventCopyWithImpl<$Res>
    implements _$SetCurrentScreenCopyWith<$Res> {
  __$SetCurrentScreenCopyWithImpl(
      _SetCurrentScreen _value, $Res Function(_SetCurrentScreen) _then)
      : super(_value, (v) => _then(v as _SetCurrentScreen));

  @override
  _SetCurrentScreen get _value => super._value as _SetCurrentScreen;

  @override
  $Res call({
    Object screenName = freezed,
  }) {
    return _then(_SetCurrentScreen(
      screenName == freezed ? _value.screenName : screenName as String,
    ));
  }
}

class _$_SetCurrentScreen implements _SetCurrentScreen {
  const _$_SetCurrentScreen(this.screenName) : assert(screenName != null);

  @override
  final String screenName;

  @override
  String toString() {
    return 'FabEvent.setCurrentScreen(screenName: $screenName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetCurrentScreen &&
            (identical(other.screenName, screenName) ||
                const DeepCollectionEquality()
                    .equals(other.screenName, screenName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(screenName);

  @override
  _$SetCurrentScreenCopyWith<_SetCurrentScreen> get copyWith =>
      __$SetCurrentScreenCopyWithImpl<_SetCurrentScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result setCurrentScreen(String screenName),
  }) {
    assert(started != null);
    assert(setCurrentScreen != null);
    return setCurrentScreen(screenName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result setCurrentScreen(String screenName),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentScreen != null) {
      return setCurrentScreen(screenName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
  }) {
    assert(started != null);
    assert(setCurrentScreen != null);
    return setCurrentScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result setCurrentScreen(_SetCurrentScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentScreen != null) {
      return setCurrentScreen(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentScreen implements FabEvent {
  const factory _SetCurrentScreen(String screenName) = _$_SetCurrentScreen;

  String get screenName;
  _$SetCurrentScreenCopyWith<_SetCurrentScreen> get copyWith;
}

class _$FabStateTearOff {
  const _$FabStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

// ignore: unused_element
const $FabState = _$FabStateTearOff();

mixin _$FabState {}

abstract class $FabStateCopyWith<$Res> {
  factory $FabStateCopyWith(FabState value, $Res Function(FabState) then) =
      _$FabStateCopyWithImpl<$Res>;
}

class _$FabStateCopyWithImpl<$Res> implements $FabStateCopyWith<$Res> {
  _$FabStateCopyWithImpl(this._value, this._then);

  final FabState _value;
  // ignore: unused_field
  final $Res Function(FabState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$FabStateCopyWithImpl<$Res>
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
    return 'FabState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Initial implements FabState {
  const factory _Initial() = _$_Initial;
}
