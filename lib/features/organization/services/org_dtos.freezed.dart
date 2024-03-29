// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OrgDto _$OrgDtoFromJson(Map<String, dynamic> json) {
  return _OrgDto.fromJson(json);
}

class _$OrgDtoTearOff {
  const _$OrgDtoTearOff();

  _OrgDto call(
      {@JsonKey(ignore: true) String orgID,
      @required String abbv,
      @required String name,
      @required String bannerImageUrl,
      @required String missionStatement,
      @required String profileImageUrl,
      @required String officeLocation,
      @required String email,
      @required String primaryColor,
      @required String secondaryColor,
      @required String orgName,
      @required bool verified,
      @required String adminTitle,
      @required String linkedInURL,
      @required String twitterURL,
      @required String facebookURL,
      @required String instagramURL,
      @required String websiteURL,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _OrgDto(
      orgID: orgID,
      abbv: abbv,
      name: name,
      bannerImageUrl: bannerImageUrl,
      missionStatement: missionStatement,
      profileImageUrl: profileImageUrl,
      officeLocation: officeLocation,
      email: email,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      orgName: orgName,
      verified: verified,
      adminTitle: adminTitle,
      linkedInURL: linkedInURL,
      twitterURL: twitterURL,
      facebookURL: facebookURL,
      instagramURL: instagramURL,
      websiteURL: websiteURL,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $OrgDto = _$OrgDtoTearOff();

mixin _$OrgDto {
  @JsonKey(ignore: true)
  String get orgID;
  String get abbv;
  String get name;
  String get bannerImageUrl;
  String get missionStatement;
  String get profileImageUrl;
  String get officeLocation;
  String get email;
  String get primaryColor;
  String get secondaryColor;
  String get orgName;
  bool get verified;
  String get adminTitle;
  String get linkedInURL;
  String get twitterURL;
  String get facebookURL;
  String get instagramURL;
  String get websiteURL;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $OrgDtoCopyWith<OrgDto> get copyWith;
}

abstract class $OrgDtoCopyWith<$Res> {
  factory $OrgDtoCopyWith(OrgDto value, $Res Function(OrgDto) then) =
      _$OrgDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String orgID,
      String abbv,
      String name,
      String bannerImageUrl,
      String missionStatement,
      String profileImageUrl,
      String officeLocation,
      String email,
      String primaryColor,
      String secondaryColor,
      String orgName,
      bool verified,
      String adminTitle,
      String linkedInURL,
      String twitterURL,
      String facebookURL,
      String instagramURL,
      String websiteURL,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$OrgDtoCopyWithImpl<$Res> implements $OrgDtoCopyWith<$Res> {
  _$OrgDtoCopyWithImpl(this._value, this._then);

  final OrgDto _value;
  // ignore: unused_field
  final $Res Function(OrgDto) _then;

  @override
  $Res call({
    Object orgID = freezed,
    Object abbv = freezed,
    Object name = freezed,
    Object bannerImageUrl = freezed,
    Object missionStatement = freezed,
    Object profileImageUrl = freezed,
    Object officeLocation = freezed,
    Object email = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object orgName = freezed,
    Object verified = freezed,
    Object adminTitle = freezed,
    Object linkedInURL = freezed,
    Object twitterURL = freezed,
    Object facebookURL = freezed,
    Object instagramURL = freezed,
    Object websiteURL = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      name: name == freezed ? _value.name : name as String,
      bannerImageUrl: bannerImageUrl == freezed
          ? _value.bannerImageUrl
          : bannerImageUrl as String,
      missionStatement: missionStatement == freezed
          ? _value.missionStatement
          : missionStatement as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      officeLocation: officeLocation == freezed
          ? _value.officeLocation
          : officeLocation as String,
      email: email == freezed ? _value.email : email as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
      orgName: orgName == freezed ? _value.orgName : orgName as String,
      verified: verified == freezed ? _value.verified : verified as bool,
      adminTitle:
          adminTitle == freezed ? _value.adminTitle : adminTitle as String,
      linkedInURL:
          linkedInURL == freezed ? _value.linkedInURL : linkedInURL as String,
      twitterURL:
          twitterURL == freezed ? _value.twitterURL : twitterURL as String,
      facebookURL:
          facebookURL == freezed ? _value.facebookURL : facebookURL as String,
      instagramURL: instagramURL == freezed
          ? _value.instagramURL
          : instagramURL as String,
      websiteURL:
          websiteURL == freezed ? _value.websiteURL : websiteURL as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$OrgDtoCopyWith<$Res> implements $OrgDtoCopyWith<$Res> {
  factory _$OrgDtoCopyWith(_OrgDto value, $Res Function(_OrgDto) then) =
      __$OrgDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String orgID,
      String abbv,
      String name,
      String bannerImageUrl,
      String missionStatement,
      String profileImageUrl,
      String officeLocation,
      String email,
      String primaryColor,
      String secondaryColor,
      String orgName,
      bool verified,
      String adminTitle,
      String linkedInURL,
      String twitterURL,
      String facebookURL,
      String instagramURL,
      String websiteURL,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$OrgDtoCopyWithImpl<$Res> extends _$OrgDtoCopyWithImpl<$Res>
    implements _$OrgDtoCopyWith<$Res> {
  __$OrgDtoCopyWithImpl(_OrgDto _value, $Res Function(_OrgDto) _then)
      : super(_value, (v) => _then(v as _OrgDto));

  @override
  _OrgDto get _value => super._value as _OrgDto;

  @override
  $Res call({
    Object orgID = freezed,
    Object abbv = freezed,
    Object name = freezed,
    Object bannerImageUrl = freezed,
    Object missionStatement = freezed,
    Object profileImageUrl = freezed,
    Object officeLocation = freezed,
    Object email = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object orgName = freezed,
    Object verified = freezed,
    Object adminTitle = freezed,
    Object linkedInURL = freezed,
    Object twitterURL = freezed,
    Object facebookURL = freezed,
    Object instagramURL = freezed,
    Object websiteURL = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_OrgDto(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      name: name == freezed ? _value.name : name as String,
      bannerImageUrl: bannerImageUrl == freezed
          ? _value.bannerImageUrl
          : bannerImageUrl as String,
      missionStatement: missionStatement == freezed
          ? _value.missionStatement
          : missionStatement as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      officeLocation: officeLocation == freezed
          ? _value.officeLocation
          : officeLocation as String,
      email: email == freezed ? _value.email : email as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
      orgName: orgName == freezed ? _value.orgName : orgName as String,
      verified: verified == freezed ? _value.verified : verified as bool,
      adminTitle:
          adminTitle == freezed ? _value.adminTitle : adminTitle as String,
      linkedInURL:
          linkedInURL == freezed ? _value.linkedInURL : linkedInURL as String,
      twitterURL:
          twitterURL == freezed ? _value.twitterURL : twitterURL as String,
      facebookURL:
          facebookURL == freezed ? _value.facebookURL : facebookURL as String,
      instagramURL: instagramURL == freezed
          ? _value.instagramURL
          : instagramURL as String,
      websiteURL:
          websiteURL == freezed ? _value.websiteURL : websiteURL as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_OrgDto with DiagnosticableTreeMixin implements _OrgDto {
  _$_OrgDto(
      {@JsonKey(ignore: true) this.orgID,
      @required this.abbv,
      @required this.name,
      @required this.bannerImageUrl,
      @required this.missionStatement,
      @required this.profileImageUrl,
      @required this.officeLocation,
      @required this.email,
      @required this.primaryColor,
      @required this.secondaryColor,
      @required this.orgName,
      @required this.verified,
      @required this.adminTitle,
      @required this.linkedInURL,
      @required this.twitterURL,
      @required this.facebookURL,
      @required this.instagramURL,
      @required this.websiteURL,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(abbv != null),
        assert(name != null),
        assert(bannerImageUrl != null),
        assert(missionStatement != null),
        assert(profileImageUrl != null),
        assert(officeLocation != null),
        assert(email != null),
        assert(primaryColor != null),
        assert(secondaryColor != null),
        assert(orgName != null),
        assert(verified != null),
        assert(adminTitle != null),
        assert(linkedInURL != null),
        assert(twitterURL != null),
        assert(facebookURL != null),
        assert(instagramURL != null),
        assert(websiteURL != null),
        assert(serverTimeStamp != null);

  factory _$_OrgDto.fromJson(Map<String, dynamic> json) =>
      _$_$_OrgDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String orgID;
  @override
  final String abbv;
  @override
  final String name;
  @override
  final String bannerImageUrl;
  @override
  final String missionStatement;
  @override
  final String profileImageUrl;
  @override
  final String officeLocation;
  @override
  final String email;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;
  @override
  final String orgName;
  @override
  final bool verified;
  @override
  final String adminTitle;
  @override
  final String linkedInURL;
  @override
  final String twitterURL;
  @override
  final String facebookURL;
  @override
  final String instagramURL;
  @override
  final String websiteURL;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrgDto(orgID: $orgID, abbv: $abbv, name: $name, bannerImageUrl: $bannerImageUrl, missionStatement: $missionStatement, profileImageUrl: $profileImageUrl, officeLocation: $officeLocation, email: $email, primaryColor: $primaryColor, secondaryColor: $secondaryColor, orgName: $orgName, verified: $verified, adminTitle: $adminTitle, linkedInURL: $linkedInURL, twitterURL: $twitterURL, facebookURL: $facebookURL, instagramURL: $instagramURL, websiteURL: $websiteURL, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrgDto'))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('abbv', abbv))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('bannerImageUrl', bannerImageUrl))
      ..add(DiagnosticsProperty('missionStatement', missionStatement))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('officeLocation', officeLocation))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty('secondaryColor', secondaryColor))
      ..add(DiagnosticsProperty('orgName', orgName))
      ..add(DiagnosticsProperty('verified', verified))
      ..add(DiagnosticsProperty('adminTitle', adminTitle))
      ..add(DiagnosticsProperty('linkedInURL', linkedInURL))
      ..add(DiagnosticsProperty('twitterURL', twitterURL))
      ..add(DiagnosticsProperty('facebookURL', facebookURL))
      ..add(DiagnosticsProperty('instagramURL', instagramURL))
      ..add(DiagnosticsProperty('websiteURL', websiteURL))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrgDto &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.abbv, abbv) ||
                const DeepCollectionEquality().equals(other.abbv, abbv)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.bannerImageUrl, bannerImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.bannerImageUrl, bannerImageUrl)) &&
            (identical(other.missionStatement, missionStatement) ||
                const DeepCollectionEquality()
                    .equals(other.missionStatement, missionStatement)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.officeLocation, officeLocation) ||
                const DeepCollectionEquality()
                    .equals(other.officeLocation, officeLocation)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.primaryColor, primaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.primaryColor, primaryColor)) &&
            (identical(other.secondaryColor, secondaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryColor, secondaryColor)) &&
            (identical(other.orgName, orgName) ||
                const DeepCollectionEquality()
                    .equals(other.orgName, orgName)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)) &&
            (identical(other.adminTitle, adminTitle) ||
                const DeepCollectionEquality()
                    .equals(other.adminTitle, adminTitle)) &&
            (identical(other.linkedInURL, linkedInURL) ||
                const DeepCollectionEquality()
                    .equals(other.linkedInURL, linkedInURL)) &&
            (identical(other.twitterURL, twitterURL) ||
                const DeepCollectionEquality()
                    .equals(other.twitterURL, twitterURL)) &&
            (identical(other.facebookURL, facebookURL) ||
                const DeepCollectionEquality()
                    .equals(other.facebookURL, facebookURL)) &&
            (identical(other.instagramURL, instagramURL) ||
                const DeepCollectionEquality()
                    .equals(other.instagramURL, instagramURL)) &&
            (identical(other.websiteURL, websiteURL) ||
                const DeepCollectionEquality()
                    .equals(other.websiteURL, websiteURL)) &&
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
      const DeepCollectionEquality().hash(bannerImageUrl) ^
      const DeepCollectionEquality().hash(missionStatement) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(officeLocation) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor) ^
      const DeepCollectionEquality().hash(orgName) ^
      const DeepCollectionEquality().hash(verified) ^
      const DeepCollectionEquality().hash(adminTitle) ^
      const DeepCollectionEquality().hash(linkedInURL) ^
      const DeepCollectionEquality().hash(twitterURL) ^
      const DeepCollectionEquality().hash(facebookURL) ^
      const DeepCollectionEquality().hash(instagramURL) ^
      const DeepCollectionEquality().hash(websiteURL) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$OrgDtoCopyWith<_OrgDto> get copyWith =>
      __$OrgDtoCopyWithImpl<_OrgDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrgDtoToJson(this);
  }
}

abstract class _OrgDto implements OrgDto {
  factory _OrgDto(
          {@JsonKey(ignore: true) String orgID,
          @required String abbv,
          @required String name,
          @required String bannerImageUrl,
          @required String missionStatement,
          @required String profileImageUrl,
          @required String officeLocation,
          @required String email,
          @required String primaryColor,
          @required String secondaryColor,
          @required String orgName,
          @required bool verified,
          @required String adminTitle,
          @required String linkedInURL,
          @required String twitterURL,
          @required String facebookURL,
          @required String instagramURL,
          @required String websiteURL,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_OrgDto;

  factory _OrgDto.fromJson(Map<String, dynamic> json) = _$_OrgDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get orgID;
  @override
  String get abbv;
  @override
  String get name;
  @override
  String get bannerImageUrl;
  @override
  String get missionStatement;
  @override
  String get profileImageUrl;
  @override
  String get officeLocation;
  @override
  String get email;
  @override
  String get primaryColor;
  @override
  String get secondaryColor;
  @override
  String get orgName;
  @override
  bool get verified;
  @override
  String get adminTitle;
  @override
  String get linkedInURL;
  @override
  String get twitterURL;
  @override
  String get facebookURL;
  @override
  String get instagramURL;
  @override
  String get websiteURL;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$OrgDtoCopyWith<_OrgDto> get copyWith;
}
