// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  RegisterWithEmailAndPassworedPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPassworedPressed();
  }

  SignInWithEmailAndPassworedPressed signInWithEmailAndPasswordPressed() {
    return const SignInWithEmailAndPassworedPressed();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }

  SignInWithApplePressed signInWithApplePressed() {
    return const SignInWithApplePressed();
  }

  ForgotMyPasswordPressed forgotMyPasswordPressed() {
    return const ForgotMyPasswordPressed();
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $RegisterWithEmailAndPassworedPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPassworedPressedCopyWith(
          RegisterWithEmailAndPassworedPressed value,
          $Res Function(RegisterWithEmailAndPassworedPressed) then) =
      _$RegisterWithEmailAndPassworedPressedCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPassworedPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPassworedPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPassworedPressedCopyWithImpl(
      RegisterWithEmailAndPassworedPressed _value,
      $Res Function(RegisterWithEmailAndPassworedPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPassworedPressed));

  @override
  RegisterWithEmailAndPassworedPressed get _value =>
      super._value as RegisterWithEmailAndPassworedPressed;
}

class _$RegisterWithEmailAndPassworedPressed
    implements RegisterWithEmailAndPassworedPressed {
  const _$RegisterWithEmailAndPassworedPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPassworedPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassworedPressed implements SignInFormEvent {
  const factory RegisterWithEmailAndPassworedPressed() =
      _$RegisterWithEmailAndPassworedPressed;
}

abstract class $SignInWithEmailAndPassworedPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPassworedPressedCopyWith(
          SignInWithEmailAndPassworedPressed value,
          $Res Function(SignInWithEmailAndPassworedPressed) then) =
      _$SignInWithEmailAndPassworedPressedCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPassworedPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPassworedPressedCopyWith<$Res> {
  _$SignInWithEmailAndPassworedPressedCopyWithImpl(
      SignInWithEmailAndPassworedPressed _value,
      $Res Function(SignInWithEmailAndPassworedPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPassworedPressed));

  @override
  SignInWithEmailAndPassworedPressed get _value =>
      super._value as SignInWithEmailAndPassworedPressed;
}

class _$SignInWithEmailAndPassworedPressed
    implements SignInWithEmailAndPassworedPressed {
  const _$SignInWithEmailAndPassworedPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPassworedPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassworedPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPassworedPressed() =
      _$SignInWithEmailAndPassworedPressed;
}

abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

abstract class $SignInWithApplePressedCopyWith<$Res> {
  factory $SignInWithApplePressedCopyWith(SignInWithApplePressed value,
          $Res Function(SignInWithApplePressed) then) =
      _$SignInWithApplePressedCopyWithImpl<$Res>;
}

class _$SignInWithApplePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithApplePressedCopyWith<$Res> {
  _$SignInWithApplePressedCopyWithImpl(SignInWithApplePressed _value,
      $Res Function(SignInWithApplePressed) _then)
      : super(_value, (v) => _then(v as SignInWithApplePressed));

  @override
  SignInWithApplePressed get _value => super._value as SignInWithApplePressed;
}

class _$SignInWithApplePressed implements SignInWithApplePressed {
  const _$SignInWithApplePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithApplePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithApplePressed implements SignInFormEvent {
  const factory SignInWithApplePressed() = _$SignInWithApplePressed;
}

abstract class $ForgotMyPasswordPressedCopyWith<$Res> {
  factory $ForgotMyPasswordPressedCopyWith(ForgotMyPasswordPressed value,
          $Res Function(ForgotMyPasswordPressed) then) =
      _$ForgotMyPasswordPressedCopyWithImpl<$Res>;
}

class _$ForgotMyPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $ForgotMyPasswordPressedCopyWith<$Res> {
  _$ForgotMyPasswordPressedCopyWithImpl(ForgotMyPasswordPressed _value,
      $Res Function(ForgotMyPasswordPressed) _then)
      : super(_value, (v) => _then(v as ForgotMyPasswordPressed));

  @override
  ForgotMyPasswordPressed get _value => super._value as ForgotMyPasswordPressed;
}

class _$ForgotMyPasswordPressed implements ForgotMyPasswordPressed {
  const _$ForgotMyPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.forgotMyPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ForgotMyPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithApplePressed(),
    @required Result forgotMyPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return forgotMyPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithApplePressed(),
    Result forgotMyPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forgotMyPasswordPressed != null) {
      return forgotMyPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassworedPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPassworedPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithApplePressed(SignInWithApplePressed value),
    @required Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(forgotMyPasswordPressed != null);
    return forgotMyPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassworedPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPassworedPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithApplePressed(SignInWithApplePressed value),
    Result forgotMyPasswordPressed(ForgotMyPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forgotMyPasswordPressed != null) {
      return forgotMyPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class ForgotMyPasswordPressed implements SignInFormEvent {
  const factory ForgotMyPasswordPressed() = _$ForgotMyPasswordPressed;
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      @required bool isRegistering}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      isRegistering: isRegistering,
    );
  }
}

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  bool get isRegistering;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool isRegistering});
}

class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object isRegistering = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      isRegistering: isRegistering == freezed
          ? _value.isRegistering
          : isRegistering as bool,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool isRegistering});
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object isRegistering = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      isRegistering: isRegistering == freezed
          ? _value.isRegistering
          : isRegistering as bool,
    ));
  }
}

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption,
      @required this.isRegistering})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null),
        assert(isRegistering != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  @override
  final bool isRegistering;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption, isRegistering: $isRegistering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)) &&
            (identical(other.isRegistering, isRegistering) ||
                const DeepCollectionEquality()
                    .equals(other.isRegistering, isRegistering)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isRegistering);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      @required bool isRegistering}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  bool get isRegistering;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
