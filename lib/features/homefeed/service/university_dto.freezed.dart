// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'university_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UniversityDto _$UniversityDtoFromJson(Map<String, dynamic> json) {
  return _UniversityDto.fromJson(json);
}

class _$UniversityDtoTearOff {
  const _$UniversityDtoTearOff();

  _UniversityDto call(
      {@JsonKey(ignore: true) String universityID,
      @required String name,
      @required String shortenName,
      @required String abbreviation,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _UniversityDto(
      universityID: universityID,
      name: name,
      shortenName: shortenName,
      abbreviation: abbreviation,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $UniversityDto = _$UniversityDtoTearOff();

mixin _$UniversityDto {
  @JsonKey(ignore: true)
  String get universityID;
  String get name;
  String get shortenName;
  String get abbreviation;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $UniversityDtoCopyWith<UniversityDto> get copyWith;
}

abstract class $UniversityDtoCopyWith<$Res> {
  factory $UniversityDtoCopyWith(
          UniversityDto value, $Res Function(UniversityDto) then) =
      _$UniversityDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String universityID,
      String name,
      String shortenName,
      String abbreviation,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$UniversityDtoCopyWithImpl<$Res>
    implements $UniversityDtoCopyWith<$Res> {
  _$UniversityDtoCopyWithImpl(this._value, this._then);

  final UniversityDto _value;
  // ignore: unused_field
  final $Res Function(UniversityDto) _then;

  @override
  $Res call({
    Object universityID = freezed,
    Object name = freezed,
    Object shortenName = freezed,
    Object abbreviation = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      universityID: universityID == freezed
          ? _value.universityID
          : universityID as String,
      name: name == freezed ? _value.name : name as String,
      shortenName:
          shortenName == freezed ? _value.shortenName : shortenName as String,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$UniversityDtoCopyWith<$Res>
    implements $UniversityDtoCopyWith<$Res> {
  factory _$UniversityDtoCopyWith(
          _UniversityDto value, $Res Function(_UniversityDto) then) =
      __$UniversityDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String universityID,
      String name,
      String shortenName,
      String abbreviation,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$UniversityDtoCopyWithImpl<$Res>
    extends _$UniversityDtoCopyWithImpl<$Res>
    implements _$UniversityDtoCopyWith<$Res> {
  __$UniversityDtoCopyWithImpl(
      _UniversityDto _value, $Res Function(_UniversityDto) _then)
      : super(_value, (v) => _then(v as _UniversityDto));

  @override
  _UniversityDto get _value => super._value as _UniversityDto;

  @override
  $Res call({
    Object universityID = freezed,
    Object name = freezed,
    Object shortenName = freezed,
    Object abbreviation = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_UniversityDto(
      universityID: universityID == freezed
          ? _value.universityID
          : universityID as String,
      name: name == freezed ? _value.name : name as String,
      shortenName:
          shortenName == freezed ? _value.shortenName : shortenName as String,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_UniversityDto with DiagnosticableTreeMixin implements _UniversityDto {
  _$_UniversityDto(
      {@JsonKey(ignore: true) this.universityID,
      @required this.name,
      @required this.shortenName,
      @required this.abbreviation,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(shortenName != null),
        assert(abbreviation != null),
        assert(serverTimeStamp != null);

  factory _$_UniversityDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UniversityDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String universityID;
  @override
  final String name;
  @override
  final String shortenName;
  @override
  final String abbreviation;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UniversityDto(universityID: $universityID, name: $name, shortenName: $shortenName, abbreviation: $abbreviation, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UniversityDto'))
      ..add(DiagnosticsProperty('universityID', universityID))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('shortenName', shortenName))
      ..add(DiagnosticsProperty('abbreviation', abbreviation))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UniversityDto &&
            (identical(other.universityID, universityID) ||
                const DeepCollectionEquality()
                    .equals(other.universityID, universityID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortenName, shortenName) ||
                const DeepCollectionEquality()
                    .equals(other.shortenName, shortenName)) &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.abbreviation, abbreviation)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(universityID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortenName) ^
      const DeepCollectionEquality().hash(abbreviation) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$UniversityDtoCopyWith<_UniversityDto> get copyWith =>
      __$UniversityDtoCopyWithImpl<_UniversityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UniversityDtoToJson(this);
  }
}

abstract class _UniversityDto implements UniversityDto {
  factory _UniversityDto(
          {@JsonKey(ignore: true) String universityID,
          @required String name,
          @required String shortenName,
          @required String abbreviation,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_UniversityDto;

  factory _UniversityDto.fromJson(Map<String, dynamic> json) =
      _$_UniversityDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get universityID;
  @override
  String get name;
  @override
  String get shortenName;
  @override
  String get abbreviation;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$UniversityDtoCopyWith<_UniversityDto> get copyWith;
}
