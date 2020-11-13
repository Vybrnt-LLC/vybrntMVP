// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'edit_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EditUserEventTearOff {
  const _$EditUserEventTearOff();

  GetEditUserData getData(User user) {
    return GetEditUserData(
      user,
    );
  }

  SaveUser saveUser() {
    return const SaveUser();
  }

  UserProfileImageChanged userProfileImageChanged(String url, File image) {
    return UserProfileImageChanged(
      url,
      image,
    );
  }

  UserBannerImageChanged userBannerImageChanged(String url, File image) {
    return UserBannerImageChanged(
      url,
      image,
    );
  }

  NameChanged nameChanged(String profileName) {
    return NameChanged(
      profileName,
    );
  }

  MajorChanged majorChanged(String major) {
    return MajorChanged(
      major,
    );
  }

  PrimaryColorChanged primaryColorChanged(String primaryColor) {
    return PrimaryColorChanged(
      primaryColor,
    );
  }

  SecondaryColorChanged secondaryColorChanged(String secondaryColor) {
    return SecondaryColorChanged(
      secondaryColor,
    );
  }

  BioChanged bioChanged(String bio) {
    return BioChanged(
      bio,
    );
  }

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }
}

// ignore: unused_element
const $EditUserEvent = _$EditUserEventTearOff();

mixin _$EditUserEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  });
}

abstract class $EditUserEventCopyWith<$Res> {
  factory $EditUserEventCopyWith(
          EditUserEvent value, $Res Function(EditUserEvent) then) =
      _$EditUserEventCopyWithImpl<$Res>;
}

class _$EditUserEventCopyWithImpl<$Res>
    implements $EditUserEventCopyWith<$Res> {
  _$EditUserEventCopyWithImpl(this._value, this._then);

  final EditUserEvent _value;
  // ignore: unused_field
  final $Res Function(EditUserEvent) _then;
}

abstract class $GetEditUserDataCopyWith<$Res> {
  factory $GetEditUserDataCopyWith(
          GetEditUserData value, $Res Function(GetEditUserData) then) =
      _$GetEditUserDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$GetEditUserDataCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res>
    implements $GetEditUserDataCopyWith<$Res> {
  _$GetEditUserDataCopyWithImpl(
      GetEditUserData _value, $Res Function(GetEditUserData) _then)
      : super(_value, (v) => _then(v as GetEditUserData));

  @override
  GetEditUserData get _value => super._value as GetEditUserData;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(GetEditUserData(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$GetEditUserData implements GetEditUserData {
  const _$GetEditUserData(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'EditUserEvent.getData(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetEditUserData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $GetEditUserDataCopyWith<GetEditUserData> get copyWith =>
      _$GetEditUserDataCopyWithImpl<GetEditUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return getData(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetEditUserData implements EditUserEvent {
  const factory GetEditUserData(User user) = _$GetEditUserData;

  User get user;
  $GetEditUserDataCopyWith<GetEditUserData> get copyWith;
}

abstract class $SaveUserCopyWith<$Res> {
  factory $SaveUserCopyWith(SaveUser value, $Res Function(SaveUser) then) =
      _$SaveUserCopyWithImpl<$Res>;
}

class _$SaveUserCopyWithImpl<$Res> extends _$EditUserEventCopyWithImpl<$Res>
    implements $SaveUserCopyWith<$Res> {
  _$SaveUserCopyWithImpl(SaveUser _value, $Res Function(SaveUser) _then)
      : super(_value, (v) => _then(v as SaveUser));

  @override
  SaveUser get _value => super._value as SaveUser;
}

class _$SaveUser implements SaveUser {
  const _$SaveUser();

  @override
  String toString() {
    return 'EditUserEvent.saveUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return saveUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveUser != null) {
      return saveUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class SaveUser implements EditUserEvent {
  const factory SaveUser() = _$SaveUser;
}

abstract class $UserProfileImageChangedCopyWith<$Res> {
  factory $UserProfileImageChangedCopyWith(UserProfileImageChanged value,
          $Res Function(UserProfileImageChanged) then) =
      _$UserProfileImageChangedCopyWithImpl<$Res>;
  $Res call({String url, File image});
}

class _$UserProfileImageChangedCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res>
    implements $UserProfileImageChangedCopyWith<$Res> {
  _$UserProfileImageChangedCopyWithImpl(UserProfileImageChanged _value,
      $Res Function(UserProfileImageChanged) _then)
      : super(_value, (v) => _then(v as UserProfileImageChanged));

  @override
  UserProfileImageChanged get _value => super._value as UserProfileImageChanged;

  @override
  $Res call({
    Object url = freezed,
    Object image = freezed,
  }) {
    return _then(UserProfileImageChanged(
      url == freezed ? _value.url : url as String,
      image == freezed ? _value.image : image as File,
    ));
  }
}

class _$UserProfileImageChanged implements UserProfileImageChanged {
  const _$UserProfileImageChanged(this.url, this.image)
      : assert(url != null),
        assert(image != null);

  @override
  final String url;
  @override
  final File image;

  @override
  String toString() {
    return 'EditUserEvent.userProfileImageChanged(url: $url, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileImageChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image);

  @override
  $UserProfileImageChangedCopyWith<UserProfileImageChanged> get copyWith =>
      _$UserProfileImageChangedCopyWithImpl<UserProfileImageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return userProfileImageChanged(url, image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userProfileImageChanged != null) {
      return userProfileImageChanged(url, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return userProfileImageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userProfileImageChanged != null) {
      return userProfileImageChanged(this);
    }
    return orElse();
  }
}

abstract class UserProfileImageChanged implements EditUserEvent {
  const factory UserProfileImageChanged(String url, File image) =
      _$UserProfileImageChanged;

  String get url;
  File get image;
  $UserProfileImageChangedCopyWith<UserProfileImageChanged> get copyWith;
}

abstract class $UserBannerImageChangedCopyWith<$Res> {
  factory $UserBannerImageChangedCopyWith(UserBannerImageChanged value,
          $Res Function(UserBannerImageChanged) then) =
      _$UserBannerImageChangedCopyWithImpl<$Res>;
  $Res call({String url, File image});
}

class _$UserBannerImageChangedCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res>
    implements $UserBannerImageChangedCopyWith<$Res> {
  _$UserBannerImageChangedCopyWithImpl(UserBannerImageChanged _value,
      $Res Function(UserBannerImageChanged) _then)
      : super(_value, (v) => _then(v as UserBannerImageChanged));

  @override
  UserBannerImageChanged get _value => super._value as UserBannerImageChanged;

  @override
  $Res call({
    Object url = freezed,
    Object image = freezed,
  }) {
    return _then(UserBannerImageChanged(
      url == freezed ? _value.url : url as String,
      image == freezed ? _value.image : image as File,
    ));
  }
}

class _$UserBannerImageChanged implements UserBannerImageChanged {
  const _$UserBannerImageChanged(this.url, this.image)
      : assert(url != null),
        assert(image != null);

  @override
  final String url;
  @override
  final File image;

  @override
  String toString() {
    return 'EditUserEvent.userBannerImageChanged(url: $url, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserBannerImageChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image);

  @override
  $UserBannerImageChangedCopyWith<UserBannerImageChanged> get copyWith =>
      _$UserBannerImageChangedCopyWithImpl<UserBannerImageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return userBannerImageChanged(url, image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userBannerImageChanged != null) {
      return userBannerImageChanged(url, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return userBannerImageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userBannerImageChanged != null) {
      return userBannerImageChanged(this);
    }
    return orElse();
  }
}

abstract class UserBannerImageChanged implements EditUserEvent {
  const factory UserBannerImageChanged(String url, File image) =
      _$UserBannerImageChanged;

  String get url;
  File get image;
  $UserBannerImageChangedCopyWith<UserBannerImageChanged> get copyWith;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String profileName});
}

class _$NameChangedCopyWithImpl<$Res> extends _$EditUserEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object profileName = freezed,
  }) {
    return _then(NameChanged(
      profileName == freezed ? _value.profileName : profileName as String,
    ));
  }
}

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.profileName) : assert(profileName != null);

  @override
  final String profileName;

  @override
  String toString() {
    return 'EditUserEvent.nameChanged(profileName: $profileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.profileName, profileName) ||
                const DeepCollectionEquality()
                    .equals(other.profileName, profileName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profileName);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return nameChanged(profileName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(profileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements EditUserEvent {
  const factory NameChanged(String profileName) = _$NameChanged;

  String get profileName;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $MajorChangedCopyWith<$Res> {
  factory $MajorChangedCopyWith(
          MajorChanged value, $Res Function(MajorChanged) then) =
      _$MajorChangedCopyWithImpl<$Res>;
  $Res call({String major});
}

class _$MajorChangedCopyWithImpl<$Res> extends _$EditUserEventCopyWithImpl<$Res>
    implements $MajorChangedCopyWith<$Res> {
  _$MajorChangedCopyWithImpl(
      MajorChanged _value, $Res Function(MajorChanged) _then)
      : super(_value, (v) => _then(v as MajorChanged));

  @override
  MajorChanged get _value => super._value as MajorChanged;

  @override
  $Res call({
    Object major = freezed,
  }) {
    return _then(MajorChanged(
      major == freezed ? _value.major : major as String,
    ));
  }
}

class _$MajorChanged implements MajorChanged {
  const _$MajorChanged(this.major) : assert(major != null);

  @override
  final String major;

  @override
  String toString() {
    return 'EditUserEvent.majorChanged(major: $major)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MajorChanged &&
            (identical(other.major, major) ||
                const DeepCollectionEquality().equals(other.major, major)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(major);

  @override
  $MajorChangedCopyWith<MajorChanged> get copyWith =>
      _$MajorChangedCopyWithImpl<MajorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return majorChanged(major);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (majorChanged != null) {
      return majorChanged(major);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return majorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (majorChanged != null) {
      return majorChanged(this);
    }
    return orElse();
  }
}

abstract class MajorChanged implements EditUserEvent {
  const factory MajorChanged(String major) = _$MajorChanged;

  String get major;
  $MajorChangedCopyWith<MajorChanged> get copyWith;
}

abstract class $PrimaryColorChangedCopyWith<$Res> {
  factory $PrimaryColorChangedCopyWith(
          PrimaryColorChanged value, $Res Function(PrimaryColorChanged) then) =
      _$PrimaryColorChangedCopyWithImpl<$Res>;
  $Res call({String primaryColor});
}

class _$PrimaryColorChangedCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res>
    implements $PrimaryColorChangedCopyWith<$Res> {
  _$PrimaryColorChangedCopyWithImpl(
      PrimaryColorChanged _value, $Res Function(PrimaryColorChanged) _then)
      : super(_value, (v) => _then(v as PrimaryColorChanged));

  @override
  PrimaryColorChanged get _value => super._value as PrimaryColorChanged;

  @override
  $Res call({
    Object primaryColor = freezed,
  }) {
    return _then(PrimaryColorChanged(
      primaryColor == freezed ? _value.primaryColor : primaryColor as String,
    ));
  }
}

class _$PrimaryColorChanged implements PrimaryColorChanged {
  const _$PrimaryColorChanged(this.primaryColor) : assert(primaryColor != null);

  @override
  final String primaryColor;

  @override
  String toString() {
    return 'EditUserEvent.primaryColorChanged(primaryColor: $primaryColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrimaryColorChanged &&
            (identical(other.primaryColor, primaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.primaryColor, primaryColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(primaryColor);

  @override
  $PrimaryColorChangedCopyWith<PrimaryColorChanged> get copyWith =>
      _$PrimaryColorChangedCopyWithImpl<PrimaryColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return primaryColorChanged(primaryColor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (primaryColorChanged != null) {
      return primaryColorChanged(primaryColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return primaryColorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (primaryColorChanged != null) {
      return primaryColorChanged(this);
    }
    return orElse();
  }
}

abstract class PrimaryColorChanged implements EditUserEvent {
  const factory PrimaryColorChanged(String primaryColor) =
      _$PrimaryColorChanged;

  String get primaryColor;
  $PrimaryColorChangedCopyWith<PrimaryColorChanged> get copyWith;
}

abstract class $SecondaryColorChangedCopyWith<$Res> {
  factory $SecondaryColorChangedCopyWith(SecondaryColorChanged value,
          $Res Function(SecondaryColorChanged) then) =
      _$SecondaryColorChangedCopyWithImpl<$Res>;
  $Res call({String secondaryColor});
}

class _$SecondaryColorChangedCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res>
    implements $SecondaryColorChangedCopyWith<$Res> {
  _$SecondaryColorChangedCopyWithImpl(
      SecondaryColorChanged _value, $Res Function(SecondaryColorChanged) _then)
      : super(_value, (v) => _then(v as SecondaryColorChanged));

  @override
  SecondaryColorChanged get _value => super._value as SecondaryColorChanged;

  @override
  $Res call({
    Object secondaryColor = freezed,
  }) {
    return _then(SecondaryColorChanged(
      secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
    ));
  }
}

class _$SecondaryColorChanged implements SecondaryColorChanged {
  const _$SecondaryColorChanged(this.secondaryColor)
      : assert(secondaryColor != null);

  @override
  final String secondaryColor;

  @override
  String toString() {
    return 'EditUserEvent.secondaryColorChanged(secondaryColor: $secondaryColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SecondaryColorChanged &&
            (identical(other.secondaryColor, secondaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryColor, secondaryColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondaryColor);

  @override
  $SecondaryColorChangedCopyWith<SecondaryColorChanged> get copyWith =>
      _$SecondaryColorChangedCopyWithImpl<SecondaryColorChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return secondaryColorChanged(secondaryColor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (secondaryColorChanged != null) {
      return secondaryColorChanged(secondaryColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return secondaryColorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (secondaryColorChanged != null) {
      return secondaryColorChanged(this);
    }
    return orElse();
  }
}

abstract class SecondaryColorChanged implements EditUserEvent {
  const factory SecondaryColorChanged(String secondaryColor) =
      _$SecondaryColorChanged;

  String get secondaryColor;
  $SecondaryColorChangedCopyWith<SecondaryColorChanged> get copyWith;
}

abstract class $BioChangedCopyWith<$Res> {
  factory $BioChangedCopyWith(
          BioChanged value, $Res Function(BioChanged) then) =
      _$BioChangedCopyWithImpl<$Res>;
  $Res call({String bio});
}

class _$BioChangedCopyWithImpl<$Res> extends _$EditUserEventCopyWithImpl<$Res>
    implements $BioChangedCopyWith<$Res> {
  _$BioChangedCopyWithImpl(BioChanged _value, $Res Function(BioChanged) _then)
      : super(_value, (v) => _then(v as BioChanged));

  @override
  BioChanged get _value => super._value as BioChanged;

  @override
  $Res call({
    Object bio = freezed,
  }) {
    return _then(BioChanged(
      bio == freezed ? _value.bio : bio as String,
    ));
  }
}

class _$BioChanged implements BioChanged {
  const _$BioChanged(this.bio) : assert(bio != null);

  @override
  final String bio;

  @override
  String toString() {
    return 'EditUserEvent.bioChanged(bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BioChanged &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bio);

  @override
  $BioChangedCopyWith<BioChanged> get copyWith =>
      _$BioChangedCopyWithImpl<BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return bioChanged(bio);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class BioChanged implements EditUserEvent {
  const factory BioChanged(String bio) = _$BioChanged;

  String get bio;
  $BioChangedCopyWith<BioChanged> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$EditUserEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'EditUserEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(User user),
    @required Result saveUser(),
    @required Result userProfileImageChanged(String url, File image),
    @required Result userBannerImageChanged(String url, File image),
    @required Result nameChanged(String profileName),
    @required Result majorChanged(String major),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result bioChanged(String bio),
    @required Result emailChanged(String email),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(User user),
    Result saveUser(),
    Result userProfileImageChanged(String url, File image),
    Result userBannerImageChanged(String url, File image),
    Result nameChanged(String profileName),
    Result majorChanged(String major),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result bioChanged(String bio),
    Result emailChanged(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditUserData value),
    @required Result saveUser(SaveUser value),
    @required Result userProfileImageChanged(UserProfileImageChanged value),
    @required Result userBannerImageChanged(UserBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result majorChanged(MajorChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result bioChanged(BioChanged value),
    @required Result emailChanged(EmailChanged value),
  }) {
    assert(getData != null);
    assert(saveUser != null);
    assert(userProfileImageChanged != null);
    assert(userBannerImageChanged != null);
    assert(nameChanged != null);
    assert(majorChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(bioChanged != null);
    assert(emailChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditUserData value),
    Result saveUser(SaveUser value),
    Result userProfileImageChanged(UserProfileImageChanged value),
    Result userBannerImageChanged(UserBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result majorChanged(MajorChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result bioChanged(BioChanged value),
    Result emailChanged(EmailChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements EditUserEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

class _$EditUserStateTearOff {
  const _$EditUserStateTearOff();

  _EditUserState call({@required User user}) {
    return _EditUserState(
      user: user,
    );
  }
}

// ignore: unused_element
const $EditUserState = _$EditUserStateTearOff();

mixin _$EditUserState {
  User get user;

  $EditUserStateCopyWith<EditUserState> get copyWith;
}

abstract class $EditUserStateCopyWith<$Res> {
  factory $EditUserStateCopyWith(
          EditUserState value, $Res Function(EditUserState) then) =
      _$EditUserStateCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$EditUserStateCopyWithImpl<$Res>
    implements $EditUserStateCopyWith<$Res> {
  _$EditUserStateCopyWithImpl(this._value, this._then);

  final EditUserState _value;
  // ignore: unused_field
  final $Res Function(EditUserState) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$EditUserStateCopyWith<$Res>
    implements $EditUserStateCopyWith<$Res> {
  factory _$EditUserStateCopyWith(
          _EditUserState value, $Res Function(_EditUserState) then) =
      __$EditUserStateCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$EditUserStateCopyWithImpl<$Res>
    extends _$EditUserStateCopyWithImpl<$Res>
    implements _$EditUserStateCopyWith<$Res> {
  __$EditUserStateCopyWithImpl(
      _EditUserState _value, $Res Function(_EditUserState) _then)
      : super(_value, (v) => _then(v as _EditUserState));

  @override
  _EditUserState get _value => super._value as _EditUserState;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_EditUserState(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_EditUserState implements _EditUserState {
  const _$_EditUserState({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'EditUserState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditUserState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$EditUserStateCopyWith<_EditUserState> get copyWith =>
      __$EditUserStateCopyWithImpl<_EditUserState>(this, _$identity);
}

abstract class _EditUserState implements EditUserState {
  const factory _EditUserState({@required User user}) = _$_EditUserState;

  @override
  User get user;
  @override
  _$EditUserStateCopyWith<_EditUserState> get copyWith;
}
