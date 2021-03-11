// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidBoolean<T> invalidBoolean<T>({bool failedValue}) {
    return InvalidBoolean<T>(
      failedValue: failedValue,
    );
  }

  InvalidInteger<T> invalidInteger<T>({int failedValue}) {
    return InvalidInteger<T>(
      failedValue: failedValue,
    );
  }

  InvalidString<T> invalidString<T>({String failedValue}) {
    return InvalidString<T>(
      failedValue: failedValue,
    );
  }

  InvalidDateTime<T> invalidDateTime<T>({DateTime failedValue}) {
    return InvalidDateTime<T>(
      failedValue: failedValue,
    );
  }

  InvalidList<T> invalidList<T>({KtList<dynamic> failedValue}) {
    return InvalidList<T>(
      failedValue: failedValue,
    );
  }

  InvalidUser<T> invalidUser<T>({User failedValue}) {
    return InvalidUser<T>(
      failedValue: failedValue,
    );
  }

  InvalidOrganization<T> invalidOrganization<T>({Organization failedValue}) {
    return InvalidOrganization<T>(
      failedValue: failedValue,
    );
  }

  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  ExceededLength<T> exceededLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceededLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  MultiLine<T> multiLine<T>({@required T failedValue}) {
    return MultiLine<T>(
      failedValue: failedValue,
    );
  }

  InvalidImageSelection<T> invalidImageSelection<T>(
      {@required T postImageURL, @required bool imageToggled}) {
    return InvalidImageSelection<T>(
      postImageURL: postImageURL,
      imageToggled: imageToggled,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $InvalidBooleanCopyWith<T, $Res> {
  factory $InvalidBooleanCopyWith(
          InvalidBoolean<T> value, $Res Function(InvalidBoolean<T>) then) =
      _$InvalidBooleanCopyWithImpl<T, $Res>;
  $Res call({bool failedValue});
}

class _$InvalidBooleanCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidBooleanCopyWith<T, $Res> {
  _$InvalidBooleanCopyWithImpl(
      InvalidBoolean<T> _value, $Res Function(InvalidBoolean<T>) _then)
      : super(_value, (v) => _then(v as InvalidBoolean<T>));

  @override
  InvalidBoolean<T> get _value => super._value as InvalidBoolean<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidBoolean<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as bool,
    ));
  }
}

class _$InvalidBoolean<T> implements InvalidBoolean<T> {
  const _$InvalidBoolean({this.failedValue});

  @override
  final bool failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidBoolean(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidBoolean<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidBooleanCopyWith<T, InvalidBoolean<T>> get copyWith =>
      _$InvalidBooleanCopyWithImpl<T, InvalidBoolean<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidBoolean(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidBoolean != null) {
      return invalidBoolean(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidBoolean(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidBoolean != null) {
      return invalidBoolean(this);
    }
    return orElse();
  }
}

abstract class InvalidBoolean<T> implements ValueFailure<T> {
  const factory InvalidBoolean({bool failedValue}) = _$InvalidBoolean<T>;

  bool get failedValue;
  $InvalidBooleanCopyWith<T, InvalidBoolean<T>> get copyWith;
}

abstract class $InvalidIntegerCopyWith<T, $Res> {
  factory $InvalidIntegerCopyWith(
          InvalidInteger<T> value, $Res Function(InvalidInteger<T>) then) =
      _$InvalidIntegerCopyWithImpl<T, $Res>;
  $Res call({int failedValue});
}

class _$InvalidIntegerCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidIntegerCopyWith<T, $Res> {
  _$InvalidIntegerCopyWithImpl(
      InvalidInteger<T> _value, $Res Function(InvalidInteger<T>) _then)
      : super(_value, (v) => _then(v as InvalidInteger<T>));

  @override
  InvalidInteger<T> get _value => super._value as InvalidInteger<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidInteger<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as int,
    ));
  }
}

class _$InvalidInteger<T> implements InvalidInteger<T> {
  const _$InvalidInteger({this.failedValue});

  @override
  final int failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidInteger(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidInteger<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidIntegerCopyWith<T, InvalidInteger<T>> get copyWith =>
      _$InvalidIntegerCopyWithImpl<T, InvalidInteger<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidInteger(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidInteger != null) {
      return invalidInteger(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidInteger(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidInteger != null) {
      return invalidInteger(this);
    }
    return orElse();
  }
}

abstract class InvalidInteger<T> implements ValueFailure<T> {
  const factory InvalidInteger({int failedValue}) = _$InvalidInteger<T>;

  int get failedValue;
  $InvalidIntegerCopyWith<T, InvalidInteger<T>> get copyWith;
}

abstract class $InvalidStringCopyWith<T, $Res> {
  factory $InvalidStringCopyWith(
          InvalidString<T> value, $Res Function(InvalidString<T>) then) =
      _$InvalidStringCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$InvalidStringCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidStringCopyWith<T, $Res> {
  _$InvalidStringCopyWithImpl(
      InvalidString<T> _value, $Res Function(InvalidString<T>) _then)
      : super(_value, (v) => _then(v as InvalidString<T>));

  @override
  InvalidString<T> get _value => super._value as InvalidString<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidString<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidString<T> implements InvalidString<T> {
  const _$InvalidString({this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidString<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidStringCopyWith<T, InvalidString<T>> get copyWith =>
      _$InvalidStringCopyWithImpl<T, InvalidString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidString(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidString != null) {
      return invalidString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidString(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidString != null) {
      return invalidString(this);
    }
    return orElse();
  }
}

abstract class InvalidString<T> implements ValueFailure<T> {
  const factory InvalidString({String failedValue}) = _$InvalidString<T>;

  String get failedValue;
  $InvalidStringCopyWith<T, InvalidString<T>> get copyWith;
}

abstract class $InvalidDateTimeCopyWith<T, $Res> {
  factory $InvalidDateTimeCopyWith(
          InvalidDateTime<T> value, $Res Function(InvalidDateTime<T>) then) =
      _$InvalidDateTimeCopyWithImpl<T, $Res>;
  $Res call({DateTime failedValue});
}

class _$InvalidDateTimeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidDateTimeCopyWith<T, $Res> {
  _$InvalidDateTimeCopyWithImpl(
      InvalidDateTime<T> _value, $Res Function(InvalidDateTime<T>) _then)
      : super(_value, (v) => _then(v as InvalidDateTime<T>));

  @override
  InvalidDateTime<T> get _value => super._value as InvalidDateTime<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidDateTime<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as DateTime,
    ));
  }
}

class _$InvalidDateTime<T> implements InvalidDateTime<T> {
  const _$InvalidDateTime({this.failedValue});

  @override
  final DateTime failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDateTime(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidDateTime<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidDateTimeCopyWith<T, InvalidDateTime<T>> get copyWith =>
      _$InvalidDateTimeCopyWithImpl<T, InvalidDateTime<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidDateTime(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateTime != null) {
      return invalidDateTime(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidDateTime(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateTime != null) {
      return invalidDateTime(this);
    }
    return orElse();
  }
}

abstract class InvalidDateTime<T> implements ValueFailure<T> {
  const factory InvalidDateTime({DateTime failedValue}) = _$InvalidDateTime<T>;

  DateTime get failedValue;
  $InvalidDateTimeCopyWith<T, InvalidDateTime<T>> get copyWith;
}

abstract class $InvalidListCopyWith<T, $Res> {
  factory $InvalidListCopyWith(
          InvalidList<T> value, $Res Function(InvalidList<T>) then) =
      _$InvalidListCopyWithImpl<T, $Res>;
  $Res call({KtList<dynamic> failedValue});
}

class _$InvalidListCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidListCopyWith<T, $Res> {
  _$InvalidListCopyWithImpl(
      InvalidList<T> _value, $Res Function(InvalidList<T>) _then)
      : super(_value, (v) => _then(v as InvalidList<T>));

  @override
  InvalidList<T> get _value => super._value as InvalidList<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidList<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue as KtList<dynamic>,
    ));
  }
}

class _$InvalidList<T> implements InvalidList<T> {
  const _$InvalidList({this.failedValue});

  @override
  final KtList<dynamic> failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidList(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidList<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidListCopyWith<T, InvalidList<T>> get copyWith =>
      _$InvalidListCopyWithImpl<T, InvalidList<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidList(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidList != null) {
      return invalidList(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidList != null) {
      return invalidList(this);
    }
    return orElse();
  }
}

abstract class InvalidList<T> implements ValueFailure<T> {
  const factory InvalidList({KtList<dynamic> failedValue}) = _$InvalidList<T>;

  KtList<dynamic> get failedValue;
  $InvalidListCopyWith<T, InvalidList<T>> get copyWith;
}

abstract class $InvalidUserCopyWith<T, $Res> {
  factory $InvalidUserCopyWith(
          InvalidUser<T> value, $Res Function(InvalidUser<T>) then) =
      _$InvalidUserCopyWithImpl<T, $Res>;
  $Res call({User failedValue});

  $UserCopyWith<$Res> get failedValue;
}

class _$InvalidUserCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUserCopyWith<T, $Res> {
  _$InvalidUserCopyWithImpl(
      InvalidUser<T> _value, $Res Function(InvalidUser<T>) _then)
      : super(_value, (v) => _then(v as InvalidUser<T>));

  @override
  InvalidUser<T> get _value => super._value as InvalidUser<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUser<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get failedValue {
    if (_value.failedValue == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.failedValue, (value) {
      return _then(_value.copyWith(failedValue: value));
    });
  }
}

class _$InvalidUser<T> implements InvalidUser<T> {
  const _$InvalidUser({this.failedValue});

  @override
  final User failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUser(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUser<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidUserCopyWith<T, InvalidUser<T>> get copyWith =>
      _$InvalidUserCopyWithImpl<T, InvalidUser<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidUser(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUser != null) {
      return invalidUser(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUser != null) {
      return invalidUser(this);
    }
    return orElse();
  }
}

abstract class InvalidUser<T> implements ValueFailure<T> {
  const factory InvalidUser({User failedValue}) = _$InvalidUser<T>;

  User get failedValue;
  $InvalidUserCopyWith<T, InvalidUser<T>> get copyWith;
}

abstract class $InvalidOrganizationCopyWith<T, $Res> {
  factory $InvalidOrganizationCopyWith(InvalidOrganization<T> value,
          $Res Function(InvalidOrganization<T>) then) =
      _$InvalidOrganizationCopyWithImpl<T, $Res>;
  $Res call({Organization failedValue});

  $OrganizationCopyWith<$Res> get failedValue;
}

class _$InvalidOrganizationCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidOrganizationCopyWith<T, $Res> {
  _$InvalidOrganizationCopyWithImpl(InvalidOrganization<T> _value,
      $Res Function(InvalidOrganization<T>) _then)
      : super(_value, (v) => _then(v as InvalidOrganization<T>));

  @override
  InvalidOrganization<T> get _value => super._value as InvalidOrganization<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidOrganization<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue as Organization,
    ));
  }

  @override
  $OrganizationCopyWith<$Res> get failedValue {
    if (_value.failedValue == null) {
      return null;
    }
    return $OrganizationCopyWith<$Res>(_value.failedValue, (value) {
      return _then(_value.copyWith(failedValue: value));
    });
  }
}

class _$InvalidOrganization<T> implements InvalidOrganization<T> {
  const _$InvalidOrganization({this.failedValue});

  @override
  final Organization failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidOrganization(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidOrganization<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidOrganizationCopyWith<T, InvalidOrganization<T>> get copyWith =>
      _$InvalidOrganizationCopyWithImpl<T, InvalidOrganization<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidOrganization(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidOrganization != null) {
      return invalidOrganization(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidOrganization(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidOrganization != null) {
      return invalidOrganization(this);
    }
    return orElse();
  }
}

abstract class InvalidOrganization<T> implements ValueFailure<T> {
  const factory InvalidOrganization({Organization failedValue}) =
      _$InvalidOrganization<T>;

  Organization get failedValue;
  $InvalidOrganizationCopyWith<T, InvalidOrganization<T>> get copyWith;
}

abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  T get failedValue;
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

abstract class $ExceededLengthCopyWith<T, $Res> {
  factory $ExceededLengthCopyWith(
          ExceededLength<T> value, $Res Function(ExceededLength<T>) then) =
      _$ExceededLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

class _$ExceededLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceededLengthCopyWith<T, $Res> {
  _$ExceededLengthCopyWithImpl(
      ExceededLength<T> _value, $Res Function(ExceededLength<T>) _then)
      : super(_value, (v) => _then(v as ExceededLength<T>));

  @override
  ExceededLength<T> get _value => super._value as ExceededLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceededLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ExceededLength<T> implements ExceededLength<T> {
  const _$ExceededLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceededLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceededLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceededLengthCopyWith<T, ExceededLength<T>> get copyWith =>
      _$ExceededLengthCopyWithImpl<T, ExceededLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return exceededLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceededLength != null) {
      return exceededLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return exceededLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceededLength != null) {
      return exceededLength(this);
    }
    return orElse();
  }
}

abstract class ExceededLength<T> implements ValueFailure<T> {
  const factory ExceededLength({@required T failedValue, @required int max}) =
      _$ExceededLength<T>;

  T get failedValue;
  int get max;
  $ExceededLengthCopyWith<T, ExceededLength<T>> get copyWith;
}

abstract class $MultiLineCopyWith<T, $Res> {
  factory $MultiLineCopyWith(
          MultiLine<T> value, $Res Function(MultiLine<T>) then) =
      _$MultiLineCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultiLineCopyWith<T, $Res> {
  _$MultiLineCopyWithImpl(
      MultiLine<T> _value, $Res Function(MultiLine<T>) _then)
      : super(_value, (v) => _then(v as MultiLine<T>));

  @override
  MultiLine<T> get _value => super._value as MultiLine<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(MultiLine<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$MultiLine<T> implements MultiLine<T> {
  const _$MultiLine({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MultiLine<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      _$MultiLineCopyWithImpl<T, MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class MultiLine<T> implements ValueFailure<T> {
  const factory MultiLine({@required T failedValue}) = _$MultiLine<T>;

  T get failedValue;
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith;
}

abstract class $InvalidImageSelectionCopyWith<T, $Res> {
  factory $InvalidImageSelectionCopyWith(InvalidImageSelection<T> value,
          $Res Function(InvalidImageSelection<T>) then) =
      _$InvalidImageSelectionCopyWithImpl<T, $Res>;
  $Res call({T postImageURL, bool imageToggled});
}

class _$InvalidImageSelectionCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidImageSelectionCopyWith<T, $Res> {
  _$InvalidImageSelectionCopyWithImpl(InvalidImageSelection<T> _value,
      $Res Function(InvalidImageSelection<T>) _then)
      : super(_value, (v) => _then(v as InvalidImageSelection<T>));

  @override
  InvalidImageSelection<T> get _value =>
      super._value as InvalidImageSelection<T>;

  @override
  $Res call({
    Object postImageURL = freezed,
    Object imageToggled = freezed,
  }) {
    return _then(InvalidImageSelection<T>(
      postImageURL:
          postImageURL == freezed ? _value.postImageURL : postImageURL as T,
      imageToggled:
          imageToggled == freezed ? _value.imageToggled : imageToggled as bool,
    ));
  }
}

class _$InvalidImageSelection<T> implements InvalidImageSelection<T> {
  const _$InvalidImageSelection(
      {@required this.postImageURL, @required this.imageToggled})
      : assert(postImageURL != null),
        assert(imageToggled != null);

  @override
  final T postImageURL;
  @override
  final bool imageToggled;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidImageSelection(postImageURL: $postImageURL, imageToggled: $imageToggled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidImageSelection<T> &&
            (identical(other.postImageURL, postImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.postImageURL, postImageURL)) &&
            (identical(other.imageToggled, imageToggled) ||
                const DeepCollectionEquality()
                    .equals(other.imageToggled, imageToggled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postImageURL) ^
      const DeepCollectionEquality().hash(imageToggled);

  @override
  $InvalidImageSelectionCopyWith<T, InvalidImageSelection<T>> get copyWith =>
      _$InvalidImageSelectionCopyWithImpl<T, InvalidImageSelection<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidBoolean(bool failedValue),
    @required Result invalidInteger(int failedValue),
    @required Result invalidString(String failedValue),
    @required Result invalidDateTime(DateTime failedValue),
    @required Result invalidList(KtList<dynamic> failedValue),
    @required Result invalidUser(User failedValue),
    @required Result invalidOrganization(Organization failedValue),
    @required Result empty(T failedValue),
    @required Result exceededLength(T failedValue, int max),
    @required Result multiLine(T failedValue),
    @required Result invalidImageSelection(T postImageURL, bool imageToggled),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidImageSelection(postImageURL, imageToggled);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidBoolean(bool failedValue),
    Result invalidInteger(int failedValue),
    Result invalidString(String failedValue),
    Result invalidDateTime(DateTime failedValue),
    Result invalidList(KtList<dynamic> failedValue),
    Result invalidUser(User failedValue),
    Result invalidOrganization(Organization failedValue),
    Result empty(T failedValue),
    Result exceededLength(T failedValue, int max),
    Result multiLine(T failedValue),
    Result invalidImageSelection(T postImageURL, bool imageToggled),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImageSelection != null) {
      return invalidImageSelection(postImageURL, imageToggled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidBoolean(InvalidBoolean<T> value),
    @required Result invalidInteger(InvalidInteger<T> value),
    @required Result invalidString(InvalidString<T> value),
    @required Result invalidDateTime(InvalidDateTime<T> value),
    @required Result invalidList(InvalidList<T> value),
    @required Result invalidUser(InvalidUser<T> value),
    @required Result invalidOrganization(InvalidOrganization<T> value),
    @required Result empty(Empty<T> value),
    @required Result exceededLength(ExceededLength<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImageSelection(InvalidImageSelection<T> value),
  }) {
    assert(invalidBoolean != null);
    assert(invalidInteger != null);
    assert(invalidString != null);
    assert(invalidDateTime != null);
    assert(invalidList != null);
    assert(invalidUser != null);
    assert(invalidOrganization != null);
    assert(empty != null);
    assert(exceededLength != null);
    assert(multiLine != null);
    assert(invalidImageSelection != null);
    return invalidImageSelection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidBoolean(InvalidBoolean<T> value),
    Result invalidInteger(InvalidInteger<T> value),
    Result invalidString(InvalidString<T> value),
    Result invalidDateTime(InvalidDateTime<T> value),
    Result invalidList(InvalidList<T> value),
    Result invalidUser(InvalidUser<T> value),
    Result invalidOrganization(InvalidOrganization<T> value),
    Result empty(Empty<T> value),
    Result exceededLength(ExceededLength<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImageSelection(InvalidImageSelection<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImageSelection != null) {
      return invalidImageSelection(this);
    }
    return orElse();
  }
}

abstract class InvalidImageSelection<T> implements ValueFailure<T> {
  const factory InvalidImageSelection(
      {@required T postImageURL,
      @required bool imageToggled}) = _$InvalidImageSelection<T>;

  T get postImageURL;
  bool get imageToggled;
  $InvalidImageSelectionCopyWith<T, InvalidImageSelection<T>> get copyWith;
}
