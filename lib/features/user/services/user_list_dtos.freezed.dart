// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_list_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserListDto _$UserListDtoFromJson(Map<String, dynamic> json) {
  return _UserListDto.fromJson(json);
}

class _$UserListDtoTearOff {
  const _$UserListDtoTearOff();

  _UserListDto call(
      {@JsonKey(ignore: true) String userID,
      @required String profileName,
      @required String profileImageUrl,
      @required String primaryColor,
      @required String secondaryColor,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _UserListDto(
      userID: userID,
      profileName: profileName,
      profileImageUrl: profileImageUrl,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $UserListDto = _$UserListDtoTearOff();

mixin _$UserListDto {
  @JsonKey(ignore: true)
  String get userID;
  String get profileName;
  String get profileImageUrl;
  String get primaryColor;
  String get secondaryColor;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $UserListDtoCopyWith<UserListDto> get copyWith;
}

abstract class $UserListDtoCopyWith<$Res> {
  factory $UserListDtoCopyWith(
          UserListDto value, $Res Function(UserListDto) then) =
      _$UserListDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String userID,
      String profileName,
      String profileImageUrl,
      String primaryColor,
      String secondaryColor,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$UserListDtoCopyWithImpl<$Res> implements $UserListDtoCopyWith<$Res> {
  _$UserListDtoCopyWithImpl(this._value, this._then);

  final UserListDto _value;
  // ignore: unused_field
  final $Res Function(UserListDto) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object profileName = freezed,
    Object profileImageUrl = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as String,
      profileName:
          profileName == freezed ? _value.profileName : profileName as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
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

abstract class _$UserListDtoCopyWith<$Res>
    implements $UserListDtoCopyWith<$Res> {
  factory _$UserListDtoCopyWith(
          _UserListDto value, $Res Function(_UserListDto) then) =
      __$UserListDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String userID,
      String profileName,
      String profileImageUrl,
      String primaryColor,
      String secondaryColor,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$UserListDtoCopyWithImpl<$Res> extends _$UserListDtoCopyWithImpl<$Res>
    implements _$UserListDtoCopyWith<$Res> {
  __$UserListDtoCopyWithImpl(
      _UserListDto _value, $Res Function(_UserListDto) _then)
      : super(_value, (v) => _then(v as _UserListDto));

  @override
  _UserListDto get _value => super._value as _UserListDto;

  @override
  $Res call({
    Object userID = freezed,
    Object profileName = freezed,
    Object profileImageUrl = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_UserListDto(
      userID: userID == freezed ? _value.userID : userID as String,
      profileName:
          profileName == freezed ? _value.profileName : profileName as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
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
class _$_UserListDto with DiagnosticableTreeMixin implements _UserListDto {
  _$_UserListDto(
      {@JsonKey(ignore: true) this.userID,
      @required this.profileName,
      @required this.profileImageUrl,
      @required this.primaryColor,
      @required this.secondaryColor,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(profileName != null),
        assert(profileImageUrl != null),
        assert(primaryColor != null),
        assert(secondaryColor != null),
        assert(serverTimeStamp != null);

  factory _$_UserListDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserListDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String userID;
  @override
  final String profileName;
  @override
  final String profileImageUrl;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListDto(userID: $userID, profileName: $profileName, profileImageUrl: $profileImageUrl, primaryColor: $primaryColor, secondaryColor: $secondaryColor, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListDto'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('profileName', profileName))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty('secondaryColor', secondaryColor))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserListDto &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.profileName, profileName) ||
                const DeepCollectionEquality()
                    .equals(other.profileName, profileName)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
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
      const DeepCollectionEquality().hash(profileName) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$UserListDtoCopyWith<_UserListDto> get copyWith =>
      __$UserListDtoCopyWithImpl<_UserListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserListDtoToJson(this);
  }
}

abstract class _UserListDto implements UserListDto {
  factory _UserListDto(
          {@JsonKey(ignore: true) String userID,
          @required String profileName,
          @required String profileImageUrl,
          @required String primaryColor,
          @required String secondaryColor,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_UserListDto;

  factory _UserListDto.fromJson(Map<String, dynamic> json) =
      _$_UserListDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get userID;
  @override
  String get profileName;
  @override
  String get profileImageUrl;
  @override
  String get primaryColor;
  @override
  String get secondaryColor;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$UserListDtoCopyWith<_UserListDto> get copyWith;
}
