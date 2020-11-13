// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'emember_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EMemberDto _$EMemberDtoFromJson(Map<String, dynamic> json) {
  return _EMemberDto.fromJson(json);
}

class _$EMemberDtoTearOff {
  const _$EMemberDtoTearOff();

  _EMemberDto call(
      {@JsonKey(ignore: true) String userID,
      @required String position,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _EMemberDto(
      userID: userID,
      position: position,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $EMemberDto = _$EMemberDtoTearOff();

mixin _$EMemberDto {
  @JsonKey(ignore: true)
  String get userID;
  String get position;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $EMemberDtoCopyWith<EMemberDto> get copyWith;
}

abstract class $EMemberDtoCopyWith<$Res> {
  factory $EMemberDtoCopyWith(
          EMemberDto value, $Res Function(EMemberDto) then) =
      _$EMemberDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String userID,
      String position,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$EMemberDtoCopyWithImpl<$Res> implements $EMemberDtoCopyWith<$Res> {
  _$EMemberDtoCopyWithImpl(this._value, this._then);

  final EMemberDto _value;
  // ignore: unused_field
  final $Res Function(EMemberDto) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object position = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as String,
      position: position == freezed ? _value.position : position as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$EMemberDtoCopyWith<$Res> implements $EMemberDtoCopyWith<$Res> {
  factory _$EMemberDtoCopyWith(
          _EMemberDto value, $Res Function(_EMemberDto) then) =
      __$EMemberDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String userID,
      String position,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$EMemberDtoCopyWithImpl<$Res> extends _$EMemberDtoCopyWithImpl<$Res>
    implements _$EMemberDtoCopyWith<$Res> {
  __$EMemberDtoCopyWithImpl(
      _EMemberDto _value, $Res Function(_EMemberDto) _then)
      : super(_value, (v) => _then(v as _EMemberDto));

  @override
  _EMemberDto get _value => super._value as _EMemberDto;

  @override
  $Res call({
    Object userID = freezed,
    Object position = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_EMemberDto(
      userID: userID == freezed ? _value.userID : userID as String,
      position: position == freezed ? _value.position : position as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_EMemberDto with DiagnosticableTreeMixin implements _EMemberDto {
  _$_EMemberDto(
      {@JsonKey(ignore: true) this.userID,
      @required this.position,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(position != null),
        assert(serverTimeStamp != null);

  factory _$_EMemberDto.fromJson(Map<String, dynamic> json) =>
      _$_$_EMemberDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String userID;
  @override
  final String position;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EMemberDto(userID: $userID, position: $position, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EMemberDto'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EMemberDto &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$EMemberDtoCopyWith<_EMemberDto> get copyWith =>
      __$EMemberDtoCopyWithImpl<_EMemberDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EMemberDtoToJson(this);
  }
}

abstract class _EMemberDto implements EMemberDto {
  factory _EMemberDto(
          {@JsonKey(ignore: true) String userID,
          @required String position,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_EMemberDto;

  factory _EMemberDto.fromJson(Map<String, dynamic> json) =
      _$_EMemberDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get userID;
  @override
  String get position;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$EMemberDtoCopyWith<_EMemberDto> get copyWith;
}
