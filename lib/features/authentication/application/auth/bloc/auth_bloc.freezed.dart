// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

  SignedOut signedOut() {
    return const SignedOut();
  }

  InitializePushNotifications initializePushNotifications() {
    return const InitializePushNotifications();
  }

  SetAnalyticsUserID setAnalyticsUserID(String currentUserID) {
    return SetAnalyticsUserID(
      currentUserID,
    );
  }

  NavigateTo navigateTo({String routeName, dynamic arguments}) {
    return NavigateTo(
      routeName: routeName,
      arguments: arguments,
    );
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result initializePushNotifications(),
    @required Result setAnalyticsUserID(String currentUserID),
    @required Result navigateTo(String routeName, dynamic arguments),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result initializePushNotifications(),
    Result setAnalyticsUserID(String currentUserID),
    Result navigateTo(String routeName, dynamic arguments),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result initializePushNotifications(InitializePushNotifications value),
    @required Result setAnalyticsUserID(SetAnalyticsUserID value),
    @required Result navigateTo(NavigateTo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result initializePushNotifications(InitializePushNotifications value),
    Result setAnalyticsUserID(SetAnalyticsUserID value),
    Result navigateTo(NavigateTo value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result initializePushNotifications(),
    @required Result setAnalyticsUserID(String currentUserID),
    @required Result navigateTo(String routeName, dynamic arguments),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result initializePushNotifications(),
    Result setAnalyticsUserID(String currentUserID),
    Result navigateTo(String routeName, dynamic arguments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result initializePushNotifications(InitializePushNotifications value),
    @required Result setAnalyticsUserID(SetAnalyticsUserID value),
    @required Result navigateTo(NavigateTo value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result initializePushNotifications(InitializePushNotifications value),
    Result setAnalyticsUserID(SetAnalyticsUserID value),
    Result navigateTo(NavigateTo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result initializePushNotifications(),
    @required Result setAnalyticsUserID(String currentUserID),
    @required Result navigateTo(String routeName, dynamic arguments),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result initializePushNotifications(),
    Result setAnalyticsUserID(String currentUserID),
    Result navigateTo(String routeName, dynamic arguments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result initializePushNotifications(InitializePushNotifications value),
    @required Result setAnalyticsUserID(SetAnalyticsUserID value),
    @required Result navigateTo(NavigateTo value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result initializePushNotifications(InitializePushNotifications value),
    Result setAnalyticsUserID(SetAnalyticsUserID value),
    Result navigateTo(NavigateTo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

abstract class $InitializePushNotificationsCopyWith<$Res> {
  factory $InitializePushNotificationsCopyWith(
          InitializePushNotifications value,
          $Res Function(InitializePushNotifications) then) =
      _$InitializePushNotificationsCopyWithImpl<$Res>;
}

class _$InitializePushNotificationsCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $InitializePushNotificationsCopyWith<$Res> {
  _$InitializePushNotificationsCopyWithImpl(InitializePushNotifications _value,
      $Res Function(InitializePushNotifications) _then)
      : super(_value, (v) => _then(v as InitializePushNotifications));

  @override
  InitializePushNotifications get _value =>
      super._value as InitializePushNotifications;
}

class _$InitializePushNotifications implements InitializePushNotifications {
  const _$InitializePushNotifications();

  @override
  String toString() {
    return 'AuthEvent.initializePushNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializePushNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result initializePushNotifications(),
    @required Result setAnalyticsUserID(String currentUserID),
    @required Result navigateTo(String routeName, dynamic arguments),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return initializePushNotifications();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result initializePushNotifications(),
    Result setAnalyticsUserID(String currentUserID),
    Result navigateTo(String routeName, dynamic arguments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializePushNotifications != null) {
      return initializePushNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result initializePushNotifications(InitializePushNotifications value),
    @required Result setAnalyticsUserID(SetAnalyticsUserID value),
    @required Result navigateTo(NavigateTo value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return initializePushNotifications(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result initializePushNotifications(InitializePushNotifications value),
    Result setAnalyticsUserID(SetAnalyticsUserID value),
    Result navigateTo(NavigateTo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializePushNotifications != null) {
      return initializePushNotifications(this);
    }
    return orElse();
  }
}

abstract class InitializePushNotifications implements AuthEvent {
  const factory InitializePushNotifications() = _$InitializePushNotifications;
}

abstract class $SetAnalyticsUserIDCopyWith<$Res> {
  factory $SetAnalyticsUserIDCopyWith(
          SetAnalyticsUserID value, $Res Function(SetAnalyticsUserID) then) =
      _$SetAnalyticsUserIDCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class _$SetAnalyticsUserIDCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SetAnalyticsUserIDCopyWith<$Res> {
  _$SetAnalyticsUserIDCopyWithImpl(
      SetAnalyticsUserID _value, $Res Function(SetAnalyticsUserID) _then)
      : super(_value, (v) => _then(v as SetAnalyticsUserID));

  @override
  SetAnalyticsUserID get _value => super._value as SetAnalyticsUserID;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(SetAnalyticsUserID(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$SetAnalyticsUserID implements SetAnalyticsUserID {
  const _$SetAnalyticsUserID(this.currentUserID)
      : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString() {
    return 'AuthEvent.setAnalyticsUserID(currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetAnalyticsUserID &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  $SetAnalyticsUserIDCopyWith<SetAnalyticsUserID> get copyWith =>
      _$SetAnalyticsUserIDCopyWithImpl<SetAnalyticsUserID>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result initializePushNotifications(),
    @required Result setAnalyticsUserID(String currentUserID),
    @required Result navigateTo(String routeName, dynamic arguments),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return setAnalyticsUserID(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result initializePushNotifications(),
    Result setAnalyticsUserID(String currentUserID),
    Result navigateTo(String routeName, dynamic arguments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setAnalyticsUserID != null) {
      return setAnalyticsUserID(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result initializePushNotifications(InitializePushNotifications value),
    @required Result setAnalyticsUserID(SetAnalyticsUserID value),
    @required Result navigateTo(NavigateTo value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return setAnalyticsUserID(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result initializePushNotifications(InitializePushNotifications value),
    Result setAnalyticsUserID(SetAnalyticsUserID value),
    Result navigateTo(NavigateTo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setAnalyticsUserID != null) {
      return setAnalyticsUserID(this);
    }
    return orElse();
  }
}

abstract class SetAnalyticsUserID implements AuthEvent {
  const factory SetAnalyticsUserID(String currentUserID) = _$SetAnalyticsUserID;

  String get currentUserID;
  $SetAnalyticsUserIDCopyWith<SetAnalyticsUserID> get copyWith;
}

abstract class $NavigateToCopyWith<$Res> {
  factory $NavigateToCopyWith(
          NavigateTo value, $Res Function(NavigateTo) then) =
      _$NavigateToCopyWithImpl<$Res>;
  $Res call({String routeName, dynamic arguments});
}

class _$NavigateToCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $NavigateToCopyWith<$Res> {
  _$NavigateToCopyWithImpl(NavigateTo _value, $Res Function(NavigateTo) _then)
      : super(_value, (v) => _then(v as NavigateTo));

  @override
  NavigateTo get _value => super._value as NavigateTo;

  @override
  $Res call({
    Object routeName = freezed,
    Object arguments = freezed,
  }) {
    return _then(NavigateTo(
      routeName: routeName == freezed ? _value.routeName : routeName as String,
      arguments: arguments == freezed ? _value.arguments : arguments as dynamic,
    ));
  }
}

class _$NavigateTo implements NavigateTo {
  const _$NavigateTo({this.routeName, this.arguments});

  @override
  final String routeName;
  @override
  final dynamic arguments;

  @override
  String toString() {
    return 'AuthEvent.navigateTo(routeName: $routeName, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateTo &&
            (identical(other.routeName, routeName) ||
                const DeepCollectionEquality()
                    .equals(other.routeName, routeName)) &&
            (identical(other.arguments, arguments) ||
                const DeepCollectionEquality()
                    .equals(other.arguments, arguments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(routeName) ^
      const DeepCollectionEquality().hash(arguments);

  @override
  $NavigateToCopyWith<NavigateTo> get copyWith =>
      _$NavigateToCopyWithImpl<NavigateTo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result initializePushNotifications(),
    @required Result setAnalyticsUserID(String currentUserID),
    @required Result navigateTo(String routeName, dynamic arguments),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return navigateTo(routeName, arguments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result initializePushNotifications(),
    Result setAnalyticsUserID(String currentUserID),
    Result navigateTo(String routeName, dynamic arguments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (navigateTo != null) {
      return navigateTo(routeName, arguments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result initializePushNotifications(InitializePushNotifications value),
    @required Result setAnalyticsUserID(SetAnalyticsUserID value),
    @required Result navigateTo(NavigateTo value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(initializePushNotifications != null);
    assert(setAnalyticsUserID != null);
    assert(navigateTo != null);
    return navigateTo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result initializePushNotifications(InitializePushNotifications value),
    Result setAnalyticsUserID(SetAnalyticsUserID value),
    Result navigateTo(NavigateTo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (navigateTo != null) {
      return navigateTo(this);
    }
    return orElse();
  }
}

abstract class NavigateTo implements AuthEvent {
  const factory NavigateTo({String routeName, dynamic arguments}) =
      _$NavigateTo;

  String get routeName;
  dynamic get arguments;
  $NavigateToCopyWith<NavigateTo> get copyWith;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Authenticated authenticated(UserAuth user) {
    return Authenticated(
      user,
    );
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(UserAuth user),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(UserAuth user),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(UserAuth user),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(UserAuth user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({UserAuth user});

  $UserAuthCopyWith<$Res> get user;
}

class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Authenticated(
      user == freezed ? _value.user : user as UserAuth,
    ));
  }

  @override
  $UserAuthCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserAuthCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$Authenticated implements Authenticated {
  const _$Authenticated(this.user) : assert(user != null);

  @override
  final UserAuth user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(UserAuth user),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(UserAuth user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(UserAuth user) = _$Authenticated;

  UserAuth get user;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(UserAuth user),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(UserAuth user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}
