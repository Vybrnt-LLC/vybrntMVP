// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required UniqueId userID,
      @required String userName,
      @required String profileName,
      @required String bannerImageUrl,
      @required String profileImageUrl,
      @required String bio,
      @required String major,
      @required String email,
      @required String primaryColor,
      @required String secondaryColor,
      @required Map<UniqueId, List<UniqueId>> unreadUpdates}) {
    return _User(
      userID: userID,
      userName: userName,
      profileName: profileName,
      bannerImageUrl: bannerImageUrl,
      profileImageUrl: profileImageUrl,
      bio: bio,
      major: major,
      email: email,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      unreadUpdates: unreadUpdates,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get userID;
  String get userName;
  String get profileName;
  String get bannerImageUrl;
  String get profileImageUrl;
  String get bio;
  String get major;
  String get email;
  String get primaryColor;
  String get secondaryColor;
  Map<UniqueId, List<UniqueId>> get unreadUpdates;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId userID,
      String userName,
      String profileName,
      String bannerImageUrl,
      String profileImageUrl,
      String bio,
      String major,
      String email,
      String primaryColor,
      String secondaryColor,
      Map<UniqueId, List<UniqueId>> unreadUpdates});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object userName = freezed,
    Object profileName = freezed,
    Object bannerImageUrl = freezed,
    Object profileImageUrl = freezed,
    Object bio = freezed,
    Object major = freezed,
    Object email = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object unreadUpdates = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
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
      major: major == freezed ? _value.major : major as String,
      email: email == freezed ? _value.email : email as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
      unreadUpdates: unreadUpdates == freezed
          ? _value.unreadUpdates
          : unreadUpdates as Map<UniqueId, List<UniqueId>>,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId userID,
      String userName,
      String profileName,
      String bannerImageUrl,
      String profileImageUrl,
      String bio,
      String major,
      String email,
      String primaryColor,
      String secondaryColor,
      Map<UniqueId, List<UniqueId>> unreadUpdates});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object userID = freezed,
    Object userName = freezed,
    Object profileName = freezed,
    Object bannerImageUrl = freezed,
    Object profileImageUrl = freezed,
    Object bio = freezed,
    Object major = freezed,
    Object email = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
    Object unreadUpdates = freezed,
  }) {
    return _then(_User(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
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
      major: major == freezed ? _value.major : major as String,
      email: email == freezed ? _value.email : email as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
      unreadUpdates: unreadUpdates == freezed
          ? _value.unreadUpdates
          : unreadUpdates as Map<UniqueId, List<UniqueId>>,
    ));
  }
}

class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.userID,
      @required this.userName,
      @required this.profileName,
      @required this.bannerImageUrl,
      @required this.profileImageUrl,
      @required this.bio,
      @required this.major,
      @required this.email,
      @required this.primaryColor,
      @required this.secondaryColor,
      @required this.unreadUpdates})
      : assert(userID != null),
        assert(userName != null),
        assert(profileName != null),
        assert(bannerImageUrl != null),
        assert(profileImageUrl != null),
        assert(bio != null),
        assert(major != null),
        assert(email != null),
        assert(primaryColor != null),
        assert(secondaryColor != null),
        assert(unreadUpdates != null);

  @override
  final UniqueId userID;
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
  final String major;
  @override
  final String email;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;
  @override
  final Map<UniqueId, List<UniqueId>> unreadUpdates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(userID: $userID, userName: $userName, profileName: $profileName, bannerImageUrl: $bannerImageUrl, profileImageUrl: $profileImageUrl, bio: $bio, major: $major, email: $email, primaryColor: $primaryColor, secondaryColor: $secondaryColor, unreadUpdates: $unreadUpdates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('profileName', profileName))
      ..add(DiagnosticsProperty('bannerImageUrl', bannerImageUrl))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('major', major))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty('secondaryColor', secondaryColor))
      ..add(DiagnosticsProperty('unreadUpdates', unreadUpdates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
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
            (identical(other.major, major) ||
                const DeepCollectionEquality().equals(other.major, major)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.primaryColor, primaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.primaryColor, primaryColor)) &&
            (identical(other.secondaryColor, secondaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryColor, secondaryColor)) &&
            (identical(other.unreadUpdates, unreadUpdates) ||
                const DeepCollectionEquality()
                    .equals(other.unreadUpdates, unreadUpdates)));
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
      const DeepCollectionEquality().hash(major) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor) ^
      const DeepCollectionEquality().hash(unreadUpdates);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId userID,
      @required String userName,
      @required String profileName,
      @required String bannerImageUrl,
      @required String profileImageUrl,
      @required String bio,
      @required String major,
      @required String email,
      @required String primaryColor,
      @required String secondaryColor,
      @required Map<UniqueId, List<UniqueId>> unreadUpdates}) = _$_User;

  @override
  UniqueId get userID;
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
  String get major;
  @override
  String get email;
  @override
  String get primaryColor;
  @override
  String get secondaryColor;
  @override
  Map<UniqueId, List<UniqueId>> get unreadUpdates;
  @override
  _$UserCopyWith<_User> get copyWith;
}
