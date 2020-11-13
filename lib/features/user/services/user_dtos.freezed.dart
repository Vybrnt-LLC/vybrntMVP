// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {@JsonKey(ignore: true) String userID,
      @required String userName,
      @required String profileName,
      @required String bannerImageUrl,
      @required String profileImageUrl,
      @required String bio,
      @required String email,
      @required String major,
      @required String primaryColor,
      @required String secondaryColor,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _UserDto(
      userID: userID,
      userName: userName,
      profileName: profileName,
      bannerImageUrl: bannerImageUrl,
      profileImageUrl: profileImageUrl,
      bio: bio,
      email: email,
      major: major,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

mixin _$UserDto {
  @JsonKey(ignore: true)
  String get userID;
  String get userName;
  String get profileName;
  String get bannerImageUrl;
  String get profileImageUrl;
  String get bio;
  String get email;
  String get major;
  String get primaryColor;
  String get secondaryColor;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String userID,
      String userName,
      String profileName,
      String bannerImageUrl,
      String profileImageUrl,
      String bio,
      String email,
      String major,
      String primaryColor,
      String secondaryColor,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object userName = freezed,
    Object profileName = freezed,
    Object bannerImageUrl = freezed,
    Object profileImageUrl = freezed,
    Object bio = freezed,
    Object email = freezed,
    Object major = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as String,
      userName: userName == freezed ? _value.userName : userName as String,
      profileName:
          profileName == freezed ? _value.profileName : profileName as String,
      bannerImageUrl: bannerImageUrl == freezed
          ? _value.bannerImageUrl
          : bannerImageUrl as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      bio: bio == freezed ? _value.bio : bio as String,
      email: email == freezed ? _value.email : email as String,
      major: major == freezed ? _value.major : major as String,
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

abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String userID,
      String userName,
      String profileName,
      String bannerImageUrl,
      String profileImageUrl,
      String bio,
      String email,
      String major,
      String primaryColor,
      String secondaryColor,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object userID = freezed,
    Object userName = freezed,
    Object profileName = freezed,
    Object bannerImageUrl = freezed,
    Object profileImageUrl = freezed,
    Object bio = freezed,
    Object email = freezed,
    Object major = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_UserDto(
      userID: userID == freezed ? _value.userID : userID as String,
      userName: userName == freezed ? _value.userName : userName as String,
      profileName:
          profileName == freezed ? _value.profileName : profileName as String,
      bannerImageUrl: bannerImageUrl == freezed
          ? _value.bannerImageUrl
          : bannerImageUrl as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      bio: bio == freezed ? _value.bio : bio as String,
      email: email == freezed ? _value.email : email as String,
      major: major == freezed ? _value.major : major as String,
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
class _$_UserDto with DiagnosticableTreeMixin implements _UserDto {
  _$_UserDto(
      {@JsonKey(ignore: true) this.userID,
      @required this.userName,
      @required this.profileName,
      @required this.bannerImageUrl,
      @required this.profileImageUrl,
      @required this.bio,
      @required this.email,
      @required this.major,
      @required this.primaryColor,
      @required this.secondaryColor,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(userName != null),
        assert(profileName != null),
        assert(bannerImageUrl != null),
        assert(profileImageUrl != null),
        assert(bio != null),
        assert(email != null),
        assert(major != null),
        assert(primaryColor != null),
        assert(secondaryColor != null),
        assert(serverTimeStamp != null);

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String userID;
  @override
  final String userName;
  @override
  final String profileName;
  @override
  final String bannerImageUrl;
  @override
  final String profileImageUrl;
  @override
  final String bio;
  @override
  final String email;
  @override
  final String major;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDto(userID: $userID, userName: $userName, profileName: $profileName, bannerImageUrl: $bannerImageUrl, profileImageUrl: $profileImageUrl, bio: $bio, email: $email, major: $major, primaryColor: $primaryColor, secondaryColor: $secondaryColor, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDto'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('profileName', profileName))
      ..add(DiagnosticsProperty('bannerImageUrl', bannerImageUrl))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('major', major))
      ..add(DiagnosticsProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty('secondaryColor', secondaryColor))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.profileName, profileName) ||
                const DeepCollectionEquality()
                    .equals(other.profileName, profileName)) &&
            (identical(other.bannerImageUrl, bannerImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.bannerImageUrl, bannerImageUrl)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.major, major) ||
                const DeepCollectionEquality().equals(other.major, major)) &&
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
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(profileName) ^
      const DeepCollectionEquality().hash(bannerImageUrl) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(major) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto implements UserDto {
  factory _UserDto(
          {@JsonKey(ignore: true) String userID,
          @required String userName,
          @required String profileName,
          @required String bannerImageUrl,
          @required String profileImageUrl,
          @required String bio,
          @required String email,
          @required String major,
          @required String primaryColor,
          @required String secondaryColor,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get userID;
  @override
  String get userName;
  @override
  String get profileName;
  @override
  String get bannerImageUrl;
  @override
  String get profileImageUrl;
  @override
  String get bio;
  @override
  String get email;
  @override
  String get major;
  @override
  String get primaryColor;
  @override
  String get secondaryColor;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
