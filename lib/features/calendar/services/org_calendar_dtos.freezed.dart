// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_calendar_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OrgCalendarDto _$OrgCalendarDtoFromJson(Map<String, dynamic> json) {
  return _OrgCalendarDto.fromJson(json);
}

class _$OrgCalendarDtoTearOff {
  const _$OrgCalendarDtoTearOff();

  _OrgCalendarDto call(
      {@JsonKey(ignore: true) String orgID,
      @required String abbv,
      @required String name,
      @required String profileImageUrl,
      @required bool isToggled,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _OrgCalendarDto(
      orgID: orgID,
      abbv: abbv,
      name: name,
      profileImageUrl: profileImageUrl,
      isToggled: isToggled,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $OrgCalendarDto = _$OrgCalendarDtoTearOff();

mixin _$OrgCalendarDto {
  @JsonKey(ignore: true)
  String get orgID;
  String get abbv;
  String get name;
  String get profileImageUrl;
  bool get isToggled;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $OrgCalendarDtoCopyWith<OrgCalendarDto> get copyWith;
}

abstract class $OrgCalendarDtoCopyWith<$Res> {
  factory $OrgCalendarDtoCopyWith(
          OrgCalendarDto value, $Res Function(OrgCalendarDto) then) =
      _$OrgCalendarDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String orgID,
      String abbv,
      String name,
      String profileImageUrl,
      bool isToggled,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$OrgCalendarDtoCopyWithImpl<$Res>
    implements $OrgCalendarDtoCopyWith<$Res> {
  _$OrgCalendarDtoCopyWithImpl(this._value, this._then);

  final OrgCalendarDto _value;
  // ignore: unused_field
  final $Res Function(OrgCalendarDto) _then;

  @override
  $Res call({
    Object orgID = freezed,
    Object abbv = freezed,
    Object name = freezed,
    Object profileImageUrl = freezed,
    Object isToggled = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      name: name == freezed ? _value.name : name as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      isToggled: isToggled == freezed ? _value.isToggled : isToggled as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$OrgCalendarDtoCopyWith<$Res>
    implements $OrgCalendarDtoCopyWith<$Res> {
  factory _$OrgCalendarDtoCopyWith(
          _OrgCalendarDto value, $Res Function(_OrgCalendarDto) then) =
      __$OrgCalendarDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String orgID,
      String abbv,
      String name,
      String profileImageUrl,
      bool isToggled,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$OrgCalendarDtoCopyWithImpl<$Res>
    extends _$OrgCalendarDtoCopyWithImpl<$Res>
    implements _$OrgCalendarDtoCopyWith<$Res> {
  __$OrgCalendarDtoCopyWithImpl(
      _OrgCalendarDto _value, $Res Function(_OrgCalendarDto) _then)
      : super(_value, (v) => _then(v as _OrgCalendarDto));

  @override
  _OrgCalendarDto get _value => super._value as _OrgCalendarDto;

  @override
  $Res call({
    Object orgID = freezed,
    Object abbv = freezed,
    Object name = freezed,
    Object profileImageUrl = freezed,
    Object isToggled = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_OrgCalendarDto(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      name: name == freezed ? _value.name : name as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      isToggled: isToggled == freezed ? _value.isToggled : isToggled as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_OrgCalendarDto
    with DiagnosticableTreeMixin
    implements _OrgCalendarDto {
  _$_OrgCalendarDto(
      {@JsonKey(ignore: true) this.orgID,
      @required this.abbv,
      @required this.name,
      @required this.profileImageUrl,
      @required this.isToggled,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(abbv != null),
        assert(name != null),
        assert(profileImageUrl != null),
        assert(isToggled != null),
        assert(serverTimeStamp != null);

  factory _$_OrgCalendarDto.fromJson(Map<String, dynamic> json) =>
      _$_$_OrgCalendarDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String orgID;
  @override
  final String abbv;
  @override
  final String name;
  @override
  final String profileImageUrl;
  @override
  final bool isToggled;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrgCalendarDto(orgID: $orgID, abbv: $abbv, name: $name, profileImageUrl: $profileImageUrl, isToggled: $isToggled, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrgCalendarDto'))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('abbv', abbv))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('isToggled', isToggled))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrgCalendarDto &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.abbv, abbv) ||
                const DeepCollectionEquality().equals(other.abbv, abbv)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.isToggled, isToggled) ||
                const DeepCollectionEquality()
                    .equals(other.isToggled, isToggled)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(abbv) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(isToggled) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$OrgCalendarDtoCopyWith<_OrgCalendarDto> get copyWith =>
      __$OrgCalendarDtoCopyWithImpl<_OrgCalendarDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrgCalendarDtoToJson(this);
  }
}

abstract class _OrgCalendarDto implements OrgCalendarDto {
  factory _OrgCalendarDto(
          {@JsonKey(ignore: true) String orgID,
          @required String abbv,
          @required String name,
          @required String profileImageUrl,
          @required bool isToggled,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_OrgCalendarDto;

  factory _OrgCalendarDto.fromJson(Map<String, dynamic> json) =
      _$_OrgCalendarDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get orgID;
  @override
  String get abbv;
  @override
  String get name;
  @override
  String get profileImageUrl;
  @override
  bool get isToggled;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$OrgCalendarDtoCopyWith<_OrgCalendarDto> get copyWith;
}
