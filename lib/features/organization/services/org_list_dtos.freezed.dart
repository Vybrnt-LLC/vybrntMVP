// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_list_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OrgListDto _$OrgListDtoFromJson(Map<String, dynamic> json) {
  return _OrgListDto.fromJson(json);
}

class _$OrgListDtoTearOff {
  const _$OrgListDtoTearOff();

  _OrgListDto call(
      {@JsonKey(ignore: true) String orgID,
      @required String name,
      @required String profileImageUrl,
      @required String abbv,
      @required String primaryColor,
      @required String secondaryColor,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _OrgListDto(
      orgID: orgID,
      name: name,
      profileImageUrl: profileImageUrl,
      abbv: abbv,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $OrgListDto = _$OrgListDtoTearOff();

mixin _$OrgListDto {
  @JsonKey(ignore: true)
  String get orgID;
  String get name;
  String get profileImageUrl;
  String get abbv;
  String get primaryColor;
  String get secondaryColor;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $OrgListDtoCopyWith<OrgListDto> get copyWith;
}

abstract class $OrgListDtoCopyWith<$Res> {
  factory $OrgListDtoCopyWith(
          OrgListDto value, $Res Function(OrgListDto) then) =
      _$OrgListDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String orgID,
      String name,
      String profileImageUrl,
      String abbv,
      String primaryColor,
      String secondaryColor,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$OrgListDtoCopyWithImpl<$Res> implements $OrgListDtoCopyWith<$Res> {
  _$OrgListDtoCopyWithImpl(this._value, this._then);

  final OrgListDto _value;
  // ignore: unused_field
  final $Res Function(OrgListDto) _then;

  @override
  $Res call({
    Object orgID = freezed,
    Object name = freezed,
    Object profileImageUrl = freezed,
    Object abbv = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      name: name == freezed ? _value.name : name as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$OrgListDtoCopyWith<$Res> implements $OrgListDtoCopyWith<$Res> {
  factory _$OrgListDtoCopyWith(
          _OrgListDto value, $Res Function(_OrgListDto) then) =
      __$OrgListDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String orgID,
      String name,
      String profileImageUrl,
      String abbv,
      String primaryColor,
      String secondaryColor,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$OrgListDtoCopyWithImpl<$Res> extends _$OrgListDtoCopyWithImpl<$Res>
    implements _$OrgListDtoCopyWith<$Res> {
  __$OrgListDtoCopyWithImpl(
      _OrgListDto _value, $Res Function(_OrgListDto) _then)
      : super(_value, (v) => _then(v as _OrgListDto));

  @override
  _OrgListDto get _value => super._value as _OrgListDto;

  @override
  $Res call({
    Object orgID = freezed,
    Object name = freezed,
    Object profileImageUrl = freezed,
    Object abbv = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_OrgListDto(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      name: name == freezed ? _value.name : name as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_OrgListDto with DiagnosticableTreeMixin implements _OrgListDto {
  _$_OrgListDto(
      {@JsonKey(ignore: true) this.orgID,
      @required this.name,
      @required this.profileImageUrl,
      @required this.abbv,
      @required this.primaryColor,
      @required this.secondaryColor,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(profileImageUrl != null),
        assert(abbv != null),
        assert(primaryColor != null),
        assert(secondaryColor != null),
        assert(serverTimeStamp != null);

  factory _$_OrgListDto.fromJson(Map<String, dynamic> json) =>
      _$_$_OrgListDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String orgID;
  @override
  final String name;
  @override
  final String profileImageUrl;
  @override
  final String abbv;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrgListDto(orgID: $orgID, name: $name, profileImageUrl: $profileImageUrl, abbv: $abbv, primaryColor: $primaryColor, secondaryColor: $secondaryColor, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrgListDto'))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('abbv', abbv))
      ..add(DiagnosticsProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty('secondaryColor', secondaryColor))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrgListDto &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.abbv, abbv) ||
                const DeepCollectionEquality().equals(other.abbv, abbv)) &&
            (identical(other.primaryColor, primaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.primaryColor, primaryColor)) &&
            (identical(other.secondaryColor, secondaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryColor, secondaryColor)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(abbv) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$OrgListDtoCopyWith<_OrgListDto> get copyWith =>
      __$OrgListDtoCopyWithImpl<_OrgListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrgListDtoToJson(this);
  }
}

abstract class _OrgListDto implements OrgListDto {
  factory _OrgListDto(
          {@JsonKey(ignore: true) String orgID,
          @required String name,
          @required String profileImageUrl,
          @required String abbv,
          @required String primaryColor,
          @required String secondaryColor,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_OrgListDto;

  factory _OrgListDto.fromJson(Map<String, dynamic> json) =
      _$_OrgListDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get orgID;
  @override
  String get name;
  @override
  String get profileImageUrl;
  @override
  String get abbv;
  @override
  String get primaryColor;
  @override
  String get secondaryColor;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$OrgListDtoCopyWith<_OrgListDto> get copyWith;
}
