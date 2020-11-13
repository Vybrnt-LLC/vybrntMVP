// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserListTearOff {
  const _$UserListTearOff();

  _UserList call(
      {@required UniqueId userID,
      @required String profileName,
      @required String profileImageUrl,
      @required String primaryColor,
      @required String secondaryColor}) {
    return _UserList(
      userID: userID,
      profileName: profileName,
      profileImageUrl: profileImageUrl,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
    );
  }
}

// ignore: unused_element
const $UserList = _$UserListTearOff();

mixin _$UserList {
  UniqueId get userID;
  String get profileName;
  String get profileImageUrl;
  String get primaryColor;
  String get secondaryColor;

  $UserListCopyWith<UserList> get copyWith;
}

abstract class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) then) =
      _$UserListCopyWithImpl<$Res>;
  $Res call(
      {UniqueId userID,
      String profileName,
      String profileImageUrl,
      String primaryColor,
      String secondaryColor});
}

class _$UserListCopyWithImpl<$Res> implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(this._value, this._then);

  final UserList _value;
  // ignore: unused_field
  final $Res Function(UserList) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object profileName = freezed,
    Object profileImageUrl = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
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
    ));
  }
}

abstract class _$UserListCopyWith<$Res> implements $UserListCopyWith<$Res> {
  factory _$UserListCopyWith(_UserList value, $Res Function(_UserList) then) =
      __$UserListCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId userID,
      String profileName,
      String profileImageUrl,
      String primaryColor,
      String secondaryColor});
}

class __$UserListCopyWithImpl<$Res> extends _$UserListCopyWithImpl<$Res>
    implements _$UserListCopyWith<$Res> {
  __$UserListCopyWithImpl(_UserList _value, $Res Function(_UserList) _then)
      : super(_value, (v) => _then(v as _UserList));

  @override
  _UserList get _value => super._value as _UserList;

  @override
  $Res call({
    Object userID = freezed,
    Object profileName = freezed,
    Object profileImageUrl = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
  }) {
    return _then(_UserList(
      userID: userID == freezed ? _value.userID : userID as UniqueId,
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
    ));
  }
}

class _$_UserList with DiagnosticableTreeMixin implements _UserList {
  const _$_UserList(
      {@required this.userID,
      @required this.profileName,
      @required this.profileImageUrl,
      @required this.primaryColor,
      @required this.secondaryColor})
      : assert(userID != null),
        assert(profileName != null),
        assert(profileImageUrl != null),
        assert(primaryColor != null),
        assert(secondaryColor != null);

  @override
  final UniqueId userID;
  @override
  final String profileName;
  @override
  final String profileImageUrl;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserList(userID: $userID, profileName: $profileName, profileImageUrl: $profileImageUrl, primaryColor: $primaryColor, secondaryColor: $secondaryColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserList'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('profileName', profileName))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty('secondaryColor', secondaryColor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserList &&
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
                    .equals(other.secondaryColor, secondaryColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(profileName) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor);

  @override
  _$UserListCopyWith<_UserList> get copyWith =>
      __$UserListCopyWithImpl<_UserList>(this, _$identity);
}

abstract class _UserList implements UserList {
  const factory _UserList(
      {@required UniqueId userID,
      @required String profileName,
      @required String profileImageUrl,
      @required String primaryColor,
      @required String secondaryColor}) = _$_UserList;

  @override
  UniqueId get userID;
  @override
  String get profileName;
  @override
  String get profileImageUrl;
  @override
  String get primaryColor;
  @override
  String get secondaryColor;
  @override
  _$UserListCopyWith<_UserList> get copyWith;
}
