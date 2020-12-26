// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserEventTearOff {
  const _$UserEventTearOff();

  GetUserData getData({String userID, String currentUserID}) {
    return GetUserData(
      userID: userID,
      currentUserID: currentUserID,
    );
  }

  AddFollower addFollower(String userID, String currentUserID) {
    return AddFollower(
      userID,
      currentUserID,
    );
  }

  RemoveFollower removeFollower(String userID, String currentUserID) {
    return RemoveFollower(
      userID,
      currentUserID,
    );
  }

  BlockUser blockUser(String userID) {
    return BlockUser(
      userID,
    );
  }

  UnBlockUser unBlockUser(String userID) {
    return UnBlockUser(
      userID,
    );
  }

  FollowingReceived followingReceived(
      KtList<String> followingIDs, String currentUserID) {
    return FollowingReceived(
      followingIDs,
      currentUserID,
    );
  }

  FollowersReceived followersReceived(
      KtList<String> followerIDs, String currentUserID) {
    return FollowersReceived(
      followerIDs,
      currentUserID,
    );
  }

  FollowedOrgsReceived followedOrgsReceived(
      KtList<String> followedOrgIDs, String currentUserID) {
    return FollowedOrgsReceived(
      followedOrgIDs,
      currentUserID,
    );
  }

  PhotosReceived photosReceived(KtList<String> photos, String currentUserID) {
    return PhotosReceived(
      photos,
      currentUserID,
    );
  }

  AddUserToNotify addUserToNotify(String userID) {
    return AddUserToNotify(
      userID,
    );
  }

  RemoveUserFromNotify removeUserFromNotify(String userID) {
    return RemoveUserFromNotify(
      userID,
    );
  }
}

// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

mixin _$UserEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  });
}

abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

abstract class $GetUserDataCopyWith<$Res> {
  factory $GetUserDataCopyWith(
          GetUserData value, $Res Function(GetUserData) then) =
      _$GetUserDataCopyWithImpl<$Res>;
  $Res call({String userID, String currentUserID});
}

class _$GetUserDataCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $GetUserDataCopyWith<$Res> {
  _$GetUserDataCopyWithImpl(
      GetUserData _value, $Res Function(GetUserData) _then)
      : super(_value, (v) => _then(v as GetUserData));

  @override
  GetUserData get _value => super._value as GetUserData;

  @override
  $Res call({
    Object userID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(GetUserData(
      userID: userID == freezed ? _value.userID : userID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

class _$GetUserData implements GetUserData {
  const _$GetUserData({this.userID, this.currentUserID});

  @override
  final String userID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'UserEvent.getData(userID: $userID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserData &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $GetUserDataCopyWith<GetUserData> get copyWith =>
      _$GetUserDataCopyWithImpl<GetUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return getData(userID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(userID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetUserData implements UserEvent {
  const factory GetUserData({String userID, String currentUserID}) =
      _$GetUserData;

  String get userID;
  String get currentUserID;
  $GetUserDataCopyWith<GetUserData> get copyWith;
}

abstract class $AddFollowerCopyWith<$Res> {
  factory $AddFollowerCopyWith(
          AddFollower value, $Res Function(AddFollower) then) =
      _$AddFollowerCopyWithImpl<$Res>;
  $Res call({String userID, String currentUserID});
}

class _$AddFollowerCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $AddFollowerCopyWith<$Res> {
  _$AddFollowerCopyWithImpl(
      AddFollower _value, $Res Function(AddFollower) _then)
      : super(_value, (v) => _then(v as AddFollower));

  @override
  AddFollower get _value => super._value as AddFollower;

  @override
  $Res call({
    Object userID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(AddFollower(
      userID == freezed ? _value.userID : userID as String,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$AddFollower implements AddFollower {
  const _$AddFollower(this.userID, this.currentUserID)
      : assert(userID != null),
        assert(currentUserID != null);

  @override
  final String userID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'UserEvent.addFollower(userID: $userID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFollower &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $AddFollowerCopyWith<AddFollower> get copyWith =>
      _$AddFollowerCopyWithImpl<AddFollower>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return addFollower(userID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFollower != null) {
      return addFollower(userID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return addFollower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFollower != null) {
      return addFollower(this);
    }
    return orElse();
  }
}

abstract class AddFollower implements UserEvent {
  const factory AddFollower(String userID, String currentUserID) =
      _$AddFollower;

  String get userID;
  String get currentUserID;
  $AddFollowerCopyWith<AddFollower> get copyWith;
}

abstract class $RemoveFollowerCopyWith<$Res> {
  factory $RemoveFollowerCopyWith(
          RemoveFollower value, $Res Function(RemoveFollower) then) =
      _$RemoveFollowerCopyWithImpl<$Res>;
  $Res call({String userID, String currentUserID});
}

class _$RemoveFollowerCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $RemoveFollowerCopyWith<$Res> {
  _$RemoveFollowerCopyWithImpl(
      RemoveFollower _value, $Res Function(RemoveFollower) _then)
      : super(_value, (v) => _then(v as RemoveFollower));

  @override
  RemoveFollower get _value => super._value as RemoveFollower;

  @override
  $Res call({
    Object userID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(RemoveFollower(
      userID == freezed ? _value.userID : userID as String,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$RemoveFollower implements RemoveFollower {
  const _$RemoveFollower(this.userID, this.currentUserID)
      : assert(userID != null),
        assert(currentUserID != null);

  @override
  final String userID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'UserEvent.removeFollower(userID: $userID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFollower &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $RemoveFollowerCopyWith<RemoveFollower> get copyWith =>
      _$RemoveFollowerCopyWithImpl<RemoveFollower>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return removeFollower(userID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFollower != null) {
      return removeFollower(userID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return removeFollower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFollower != null) {
      return removeFollower(this);
    }
    return orElse();
  }
}

abstract class RemoveFollower implements UserEvent {
  const factory RemoveFollower(String userID, String currentUserID) =
      _$RemoveFollower;

  String get userID;
  String get currentUserID;
  $RemoveFollowerCopyWith<RemoveFollower> get copyWith;
}

abstract class $BlockUserCopyWith<$Res> {
  factory $BlockUserCopyWith(BlockUser value, $Res Function(BlockUser) then) =
      _$BlockUserCopyWithImpl<$Res>;
  $Res call({String userID});
}

class _$BlockUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $BlockUserCopyWith<$Res> {
  _$BlockUserCopyWithImpl(BlockUser _value, $Res Function(BlockUser) _then)
      : super(_value, (v) => _then(v as BlockUser));

  @override
  BlockUser get _value => super._value as BlockUser;

  @override
  $Res call({
    Object userID = freezed,
  }) {
    return _then(BlockUser(
      userID == freezed ? _value.userID : userID as String,
    ));
  }
}

class _$BlockUser implements BlockUser {
  const _$BlockUser(this.userID) : assert(userID != null);

  @override
  final String userID;

  @override
  String toString() {
    return 'UserEvent.blockUser(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BlockUser &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  $BlockUserCopyWith<BlockUser> get copyWith =>
      _$BlockUserCopyWithImpl<BlockUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return blockUser(userID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockUser != null) {
      return blockUser(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return blockUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockUser != null) {
      return blockUser(this);
    }
    return orElse();
  }
}

abstract class BlockUser implements UserEvent {
  const factory BlockUser(String userID) = _$BlockUser;

  String get userID;
  $BlockUserCopyWith<BlockUser> get copyWith;
}

abstract class $UnBlockUserCopyWith<$Res> {
  factory $UnBlockUserCopyWith(
          UnBlockUser value, $Res Function(UnBlockUser) then) =
      _$UnBlockUserCopyWithImpl<$Res>;
  $Res call({String userID});
}

class _$UnBlockUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UnBlockUserCopyWith<$Res> {
  _$UnBlockUserCopyWithImpl(
      UnBlockUser _value, $Res Function(UnBlockUser) _then)
      : super(_value, (v) => _then(v as UnBlockUser));

  @override
  UnBlockUser get _value => super._value as UnBlockUser;

  @override
  $Res call({
    Object userID = freezed,
  }) {
    return _then(UnBlockUser(
      userID == freezed ? _value.userID : userID as String,
    ));
  }
}

class _$UnBlockUser implements UnBlockUser {
  const _$UnBlockUser(this.userID) : assert(userID != null);

  @override
  final String userID;

  @override
  String toString() {
    return 'UserEvent.unBlockUser(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnBlockUser &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  $UnBlockUserCopyWith<UnBlockUser> get copyWith =>
      _$UnBlockUserCopyWithImpl<UnBlockUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return unBlockUser(userID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unBlockUser != null) {
      return unBlockUser(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return unBlockUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unBlockUser != null) {
      return unBlockUser(this);
    }
    return orElse();
  }
}

abstract class UnBlockUser implements UserEvent {
  const factory UnBlockUser(String userID) = _$UnBlockUser;

  String get userID;
  $UnBlockUserCopyWith<UnBlockUser> get copyWith;
}

abstract class $FollowingReceivedCopyWith<$Res> {
  factory $FollowingReceivedCopyWith(
          FollowingReceived value, $Res Function(FollowingReceived) then) =
      _$FollowingReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> followingIDs, String currentUserID});
}

class _$FollowingReceivedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $FollowingReceivedCopyWith<$Res> {
  _$FollowingReceivedCopyWithImpl(
      FollowingReceived _value, $Res Function(FollowingReceived) _then)
      : super(_value, (v) => _then(v as FollowingReceived));

  @override
  FollowingReceived get _value => super._value as FollowingReceived;

  @override
  $Res call({
    Object followingIDs = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(FollowingReceived(
      followingIDs == freezed
          ? _value.followingIDs
          : followingIDs as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$FollowingReceived implements FollowingReceived {
  const _$FollowingReceived(this.followingIDs, this.currentUserID)
      : assert(followingIDs != null),
        assert(currentUserID != null);

  @override
  final KtList<String> followingIDs;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'UserEvent.followingReceived(followingIDs: $followingIDs, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FollowingReceived &&
            (identical(other.followingIDs, followingIDs) ||
                const DeepCollectionEquality()
                    .equals(other.followingIDs, followingIDs)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(followingIDs) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $FollowingReceivedCopyWith<FollowingReceived> get copyWith =>
      _$FollowingReceivedCopyWithImpl<FollowingReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return followingReceived(followingIDs, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followingReceived != null) {
      return followingReceived(followingIDs, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return followingReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followingReceived != null) {
      return followingReceived(this);
    }
    return orElse();
  }
}

abstract class FollowingReceived implements UserEvent {
  const factory FollowingReceived(
      KtList<String> followingIDs, String currentUserID) = _$FollowingReceived;

  KtList<String> get followingIDs;
  String get currentUserID;
  $FollowingReceivedCopyWith<FollowingReceived> get copyWith;
}

abstract class $FollowersReceivedCopyWith<$Res> {
  factory $FollowersReceivedCopyWith(
          FollowersReceived value, $Res Function(FollowersReceived) then) =
      _$FollowersReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> followerIDs, String currentUserID});
}

class _$FollowersReceivedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $FollowersReceivedCopyWith<$Res> {
  _$FollowersReceivedCopyWithImpl(
      FollowersReceived _value, $Res Function(FollowersReceived) _then)
      : super(_value, (v) => _then(v as FollowersReceived));

  @override
  FollowersReceived get _value => super._value as FollowersReceived;

  @override
  $Res call({
    Object followerIDs = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(FollowersReceived(
      followerIDs == freezed
          ? _value.followerIDs
          : followerIDs as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$FollowersReceived implements FollowersReceived {
  const _$FollowersReceived(this.followerIDs, this.currentUserID)
      : assert(followerIDs != null),
        assert(currentUserID != null);

  @override
  final KtList<String> followerIDs;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'UserEvent.followersReceived(followerIDs: $followerIDs, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FollowersReceived &&
            (identical(other.followerIDs, followerIDs) ||
                const DeepCollectionEquality()
                    .equals(other.followerIDs, followerIDs)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(followerIDs) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $FollowersReceivedCopyWith<FollowersReceived> get copyWith =>
      _$FollowersReceivedCopyWithImpl<FollowersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return followersReceived(followerIDs, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followersReceived != null) {
      return followersReceived(followerIDs, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return followersReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followersReceived != null) {
      return followersReceived(this);
    }
    return orElse();
  }
}

abstract class FollowersReceived implements UserEvent {
  const factory FollowersReceived(
      KtList<String> followerIDs, String currentUserID) = _$FollowersReceived;

  KtList<String> get followerIDs;
  String get currentUserID;
  $FollowersReceivedCopyWith<FollowersReceived> get copyWith;
}

abstract class $FollowedOrgsReceivedCopyWith<$Res> {
  factory $FollowedOrgsReceivedCopyWith(FollowedOrgsReceived value,
          $Res Function(FollowedOrgsReceived) then) =
      _$FollowedOrgsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> followedOrgIDs, String currentUserID});
}

class _$FollowedOrgsReceivedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $FollowedOrgsReceivedCopyWith<$Res> {
  _$FollowedOrgsReceivedCopyWithImpl(
      FollowedOrgsReceived _value, $Res Function(FollowedOrgsReceived) _then)
      : super(_value, (v) => _then(v as FollowedOrgsReceived));

  @override
  FollowedOrgsReceived get _value => super._value as FollowedOrgsReceived;

  @override
  $Res call({
    Object followedOrgIDs = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(FollowedOrgsReceived(
      followedOrgIDs == freezed
          ? _value.followedOrgIDs
          : followedOrgIDs as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$FollowedOrgsReceived implements FollowedOrgsReceived {
  const _$FollowedOrgsReceived(this.followedOrgIDs, this.currentUserID)
      : assert(followedOrgIDs != null),
        assert(currentUserID != null);

  @override
  final KtList<String> followedOrgIDs;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'UserEvent.followedOrgsReceived(followedOrgIDs: $followedOrgIDs, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FollowedOrgsReceived &&
            (identical(other.followedOrgIDs, followedOrgIDs) ||
                const DeepCollectionEquality()
                    .equals(other.followedOrgIDs, followedOrgIDs)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(followedOrgIDs) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $FollowedOrgsReceivedCopyWith<FollowedOrgsReceived> get copyWith =>
      _$FollowedOrgsReceivedCopyWithImpl<FollowedOrgsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return followedOrgsReceived(followedOrgIDs, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followedOrgsReceived != null) {
      return followedOrgsReceived(followedOrgIDs, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return followedOrgsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followedOrgsReceived != null) {
      return followedOrgsReceived(this);
    }
    return orElse();
  }
}

abstract class FollowedOrgsReceived implements UserEvent {
  const factory FollowedOrgsReceived(
          KtList<String> followedOrgIDs, String currentUserID) =
      _$FollowedOrgsReceived;

  KtList<String> get followedOrgIDs;
  String get currentUserID;
  $FollowedOrgsReceivedCopyWith<FollowedOrgsReceived> get copyWith;
}

abstract class $PhotosReceivedCopyWith<$Res> {
  factory $PhotosReceivedCopyWith(
          PhotosReceived value, $Res Function(PhotosReceived) then) =
      _$PhotosReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> photos, String currentUserID});
}

class _$PhotosReceivedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $PhotosReceivedCopyWith<$Res> {
  _$PhotosReceivedCopyWithImpl(
      PhotosReceived _value, $Res Function(PhotosReceived) _then)
      : super(_value, (v) => _then(v as PhotosReceived));

  @override
  PhotosReceived get _value => super._value as PhotosReceived;

  @override
  $Res call({
    Object photos = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(PhotosReceived(
      photos == freezed ? _value.photos : photos as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$PhotosReceived implements PhotosReceived {
  const _$PhotosReceived(this.photos, this.currentUserID)
      : assert(photos != null),
        assert(currentUserID != null);

  @override
  final KtList<String> photos;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'UserEvent.photosReceived(photos: $photos, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhotosReceived &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $PhotosReceivedCopyWith<PhotosReceived> get copyWith =>
      _$PhotosReceivedCopyWithImpl<PhotosReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return photosReceived(photos, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (photosReceived != null) {
      return photosReceived(photos, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return photosReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (photosReceived != null) {
      return photosReceived(this);
    }
    return orElse();
  }
}

abstract class PhotosReceived implements UserEvent {
  const factory PhotosReceived(KtList<String> photos, String currentUserID) =
      _$PhotosReceived;

  KtList<String> get photos;
  String get currentUserID;
  $PhotosReceivedCopyWith<PhotosReceived> get copyWith;
}

abstract class $AddUserToNotifyCopyWith<$Res> {
  factory $AddUserToNotifyCopyWith(
          AddUserToNotify value, $Res Function(AddUserToNotify) then) =
      _$AddUserToNotifyCopyWithImpl<$Res>;
  $Res call({String userID});
}

class _$AddUserToNotifyCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $AddUserToNotifyCopyWith<$Res> {
  _$AddUserToNotifyCopyWithImpl(
      AddUserToNotify _value, $Res Function(AddUserToNotify) _then)
      : super(_value, (v) => _then(v as AddUserToNotify));

  @override
  AddUserToNotify get _value => super._value as AddUserToNotify;

  @override
  $Res call({
    Object userID = freezed,
  }) {
    return _then(AddUserToNotify(
      userID == freezed ? _value.userID : userID as String,
    ));
  }
}

class _$AddUserToNotify implements AddUserToNotify {
  const _$AddUserToNotify(this.userID) : assert(userID != null);

  @override
  final String userID;

  @override
  String toString() {
    return 'UserEvent.addUserToNotify(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddUserToNotify &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  $AddUserToNotifyCopyWith<AddUserToNotify> get copyWith =>
      _$AddUserToNotifyCopyWithImpl<AddUserToNotify>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return addUserToNotify(userID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addUserToNotify != null) {
      return addUserToNotify(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return addUserToNotify(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addUserToNotify != null) {
      return addUserToNotify(this);
    }
    return orElse();
  }
}

abstract class AddUserToNotify implements UserEvent {
  const factory AddUserToNotify(String userID) = _$AddUserToNotify;

  String get userID;
  $AddUserToNotifyCopyWith<AddUserToNotify> get copyWith;
}

abstract class $RemoveUserFromNotifyCopyWith<$Res> {
  factory $RemoveUserFromNotifyCopyWith(RemoveUserFromNotify value,
          $Res Function(RemoveUserFromNotify) then) =
      _$RemoveUserFromNotifyCopyWithImpl<$Res>;
  $Res call({String userID});
}

class _$RemoveUserFromNotifyCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $RemoveUserFromNotifyCopyWith<$Res> {
  _$RemoveUserFromNotifyCopyWithImpl(
      RemoveUserFromNotify _value, $Res Function(RemoveUserFromNotify) _then)
      : super(_value, (v) => _then(v as RemoveUserFromNotify));

  @override
  RemoveUserFromNotify get _value => super._value as RemoveUserFromNotify;

  @override
  $Res call({
    Object userID = freezed,
  }) {
    return _then(RemoveUserFromNotify(
      userID == freezed ? _value.userID : userID as String,
    ));
  }
}

class _$RemoveUserFromNotify implements RemoveUserFromNotify {
  const _$RemoveUserFromNotify(this.userID) : assert(userID != null);

  @override
  final String userID;

  @override
  String toString() {
    return 'UserEvent.removeUserFromNotify(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveUserFromNotify &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  $RemoveUserFromNotifyCopyWith<RemoveUserFromNotify> get copyWith =>
      _$RemoveUserFromNotifyCopyWithImpl<RemoveUserFromNotify>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String userID, String currentUserID),
    @required Result addFollower(String userID, String currentUserID),
    @required Result removeFollower(String userID, String currentUserID),
    @required Result blockUser(String userID),
    @required Result unBlockUser(String userID),
    @required
        Result followingReceived(
            KtList<String> followingIDs, String currentUserID),
    @required
        Result followersReceived(
            KtList<String> followerIDs, String currentUserID),
    @required
        Result followedOrgsReceived(
            KtList<String> followedOrgIDs, String currentUserID),
    @required
        Result photosReceived(KtList<String> photos, String currentUserID),
    @required Result addUserToNotify(String userID),
    @required Result removeUserFromNotify(String userID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return removeUserFromNotify(userID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String userID, String currentUserID),
    Result addFollower(String userID, String currentUserID),
    Result removeFollower(String userID, String currentUserID),
    Result blockUser(String userID),
    Result unBlockUser(String userID),
    Result followingReceived(KtList<String> followingIDs, String currentUserID),
    Result followersReceived(KtList<String> followerIDs, String currentUserID),
    Result followedOrgsReceived(
        KtList<String> followedOrgIDs, String currentUserID),
    Result photosReceived(KtList<String> photos, String currentUserID),
    Result addUserToNotify(String userID),
    Result removeUserFromNotify(String userID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeUserFromNotify != null) {
      return removeUserFromNotify(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result blockUser(BlockUser value),
    @required Result unBlockUser(UnBlockUser value),
    @required Result followingReceived(FollowingReceived value),
    @required Result followersReceived(FollowersReceived value),
    @required Result followedOrgsReceived(FollowedOrgsReceived value),
    @required Result photosReceived(PhotosReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(blockUser != null);
    assert(unBlockUser != null);
    assert(followingReceived != null);
    assert(followersReceived != null);
    assert(followedOrgsReceived != null);
    assert(photosReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    return removeUserFromNotify(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result blockUser(BlockUser value),
    Result unBlockUser(UnBlockUser value),
    Result followingReceived(FollowingReceived value),
    Result followersReceived(FollowersReceived value),
    Result followedOrgsReceived(FollowedOrgsReceived value),
    Result photosReceived(PhotosReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeUserFromNotify != null) {
      return removeUserFromNotify(this);
    }
    return orElse();
  }
}

abstract class RemoveUserFromNotify implements UserEvent {
  const factory RemoveUserFromNotify(String userID) = _$RemoveUserFromNotify;

  String get userID;
  $RemoveUserFromNotifyCopyWith<RemoveUserFromNotify> get copyWith;
}

class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {@required bool isFollowing,
      @required bool isBlocking,
      @required int followerCount,
      @required int followingCount,
      @required int photoCount,
      @required KtList<String> followingIDs,
      @required KtList<String> followerIDs,
      @required KtList<String> followedOrgIDs,
      @required KtList<String> photos,
      @required bool isNotified,
      @required String shareLink}) {
    return _UserState(
      isFollowing: isFollowing,
      isBlocking: isBlocking,
      followerCount: followerCount,
      followingCount: followingCount,
      photoCount: photoCount,
      followingIDs: followingIDs,
      followerIDs: followerIDs,
      followedOrgIDs: followedOrgIDs,
      photos: photos,
      isNotified: isNotified,
      shareLink: shareLink,
    );
  }
}

// ignore: unused_element
const $UserState = _$UserStateTearOff();

mixin _$UserState {
  bool get isFollowing;
  bool get isBlocking;
  int get followerCount;
  int get followingCount;
  int get photoCount;
  KtList<String> get followingIDs;
  KtList<String> get followerIDs;
  KtList<String> get followedOrgIDs;
  KtList<String> get photos;
  bool get isNotified;
  String get shareLink;

  $UserStateCopyWith<UserState> get copyWith;
}

abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFollowing,
      bool isBlocking,
      int followerCount,
      int followingCount,
      int photoCount,
      KtList<String> followingIDs,
      KtList<String> followerIDs,
      KtList<String> followedOrgIDs,
      KtList<String> photos,
      bool isNotified,
      String shareLink});
}

class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object isFollowing = freezed,
    Object isBlocking = freezed,
    Object followerCount = freezed,
    Object followingCount = freezed,
    Object photoCount = freezed,
    Object followingIDs = freezed,
    Object followerIDs = freezed,
    Object followedOrgIDs = freezed,
    Object photos = freezed,
    Object isNotified = freezed,
    Object shareLink = freezed,
  }) {
    return _then(_value.copyWith(
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
      isBlocking:
          isBlocking == freezed ? _value.isBlocking : isBlocking as bool,
      followerCount: followerCount == freezed
          ? _value.followerCount
          : followerCount as int,
      followingCount: followingCount == freezed
          ? _value.followingCount
          : followingCount as int,
      photoCount: photoCount == freezed ? _value.photoCount : photoCount as int,
      followingIDs: followingIDs == freezed
          ? _value.followingIDs
          : followingIDs as KtList<String>,
      followerIDs: followerIDs == freezed
          ? _value.followerIDs
          : followerIDs as KtList<String>,
      followedOrgIDs: followedOrgIDs == freezed
          ? _value.followedOrgIDs
          : followedOrgIDs as KtList<String>,
      photos: photos == freezed ? _value.photos : photos as KtList<String>,
      isNotified:
          isNotified == freezed ? _value.isNotified : isNotified as bool,
      shareLink: shareLink == freezed ? _value.shareLink : shareLink as String,
    ));
  }
}

abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFollowing,
      bool isBlocking,
      int followerCount,
      int followingCount,
      int photoCount,
      KtList<String> followingIDs,
      KtList<String> followerIDs,
      KtList<String> followedOrgIDs,
      KtList<String> photos,
      bool isNotified,
      String shareLink});
}

class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object isFollowing = freezed,
    Object isBlocking = freezed,
    Object followerCount = freezed,
    Object followingCount = freezed,
    Object photoCount = freezed,
    Object followingIDs = freezed,
    Object followerIDs = freezed,
    Object followedOrgIDs = freezed,
    Object photos = freezed,
    Object isNotified = freezed,
    Object shareLink = freezed,
  }) {
    return _then(_UserState(
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
      isBlocking:
          isBlocking == freezed ? _value.isBlocking : isBlocking as bool,
      followerCount: followerCount == freezed
          ? _value.followerCount
          : followerCount as int,
      followingCount: followingCount == freezed
          ? _value.followingCount
          : followingCount as int,
      photoCount: photoCount == freezed ? _value.photoCount : photoCount as int,
      followingIDs: followingIDs == freezed
          ? _value.followingIDs
          : followingIDs as KtList<String>,
      followerIDs: followerIDs == freezed
          ? _value.followerIDs
          : followerIDs as KtList<String>,
      followedOrgIDs: followedOrgIDs == freezed
          ? _value.followedOrgIDs
          : followedOrgIDs as KtList<String>,
      photos: photos == freezed ? _value.photos : photos as KtList<String>,
      isNotified:
          isNotified == freezed ? _value.isNotified : isNotified as bool,
      shareLink: shareLink == freezed ? _value.shareLink : shareLink as String,
    ));
  }
}

class _$_UserState implements _UserState {
  const _$_UserState(
      {@required this.isFollowing,
      @required this.isBlocking,
      @required this.followerCount,
      @required this.followingCount,
      @required this.photoCount,
      @required this.followingIDs,
      @required this.followerIDs,
      @required this.followedOrgIDs,
      @required this.photos,
      @required this.isNotified,
      @required this.shareLink})
      : assert(isFollowing != null),
        assert(isBlocking != null),
        assert(followerCount != null),
        assert(followingCount != null),
        assert(photoCount != null),
        assert(followingIDs != null),
        assert(followerIDs != null),
        assert(followedOrgIDs != null),
        assert(photos != null),
        assert(isNotified != null),
        assert(shareLink != null);

  @override
  final bool isFollowing;
  @override
  final bool isBlocking;
  @override
  final int followerCount;
  @override
  final int followingCount;
  @override
  final int photoCount;
  @override
  final KtList<String> followingIDs;
  @override
  final KtList<String> followerIDs;
  @override
  final KtList<String> followedOrgIDs;
  @override
  final KtList<String> photos;
  @override
  final bool isNotified;
  @override
  final String shareLink;

  @override
  String toString() {
    return 'UserState(isFollowing: $isFollowing, isBlocking: $isBlocking, followerCount: $followerCount, followingCount: $followingCount, photoCount: $photoCount, followingIDs: $followingIDs, followerIDs: $followerIDs, followedOrgIDs: $followedOrgIDs, photos: $photos, isNotified: $isNotified, shareLink: $shareLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)) &&
            (identical(other.isBlocking, isBlocking) ||
                const DeepCollectionEquality()
                    .equals(other.isBlocking, isBlocking)) &&
            (identical(other.followerCount, followerCount) ||
                const DeepCollectionEquality()
                    .equals(other.followerCount, followerCount)) &&
            (identical(other.followingCount, followingCount) ||
                const DeepCollectionEquality()
                    .equals(other.followingCount, followingCount)) &&
            (identical(other.photoCount, photoCount) ||
                const DeepCollectionEquality()
                    .equals(other.photoCount, photoCount)) &&
            (identical(other.followingIDs, followingIDs) ||
                const DeepCollectionEquality()
                    .equals(other.followingIDs, followingIDs)) &&
            (identical(other.followerIDs, followerIDs) ||
                const DeepCollectionEquality()
                    .equals(other.followerIDs, followerIDs)) &&
            (identical(other.followedOrgIDs, followedOrgIDs) ||
                const DeepCollectionEquality()
                    .equals(other.followedOrgIDs, followedOrgIDs)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.isNotified, isNotified) ||
                const DeepCollectionEquality()
                    .equals(other.isNotified, isNotified)) &&
            (identical(other.shareLink, shareLink) ||
                const DeepCollectionEquality()
                    .equals(other.shareLink, shareLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFollowing) ^
      const DeepCollectionEquality().hash(isBlocking) ^
      const DeepCollectionEquality().hash(followerCount) ^
      const DeepCollectionEquality().hash(followingCount) ^
      const DeepCollectionEquality().hash(photoCount) ^
      const DeepCollectionEquality().hash(followingIDs) ^
      const DeepCollectionEquality().hash(followerIDs) ^
      const DeepCollectionEquality().hash(followedOrgIDs) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(isNotified) ^
      const DeepCollectionEquality().hash(shareLink);

  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {@required bool isFollowing,
      @required bool isBlocking,
      @required int followerCount,
      @required int followingCount,
      @required int photoCount,
      @required KtList<String> followingIDs,
      @required KtList<String> followerIDs,
      @required KtList<String> followedOrgIDs,
      @required KtList<String> photos,
      @required bool isNotified,
      @required String shareLink}) = _$_UserState;

  @override
  bool get isFollowing;
  @override
  bool get isBlocking;
  @override
  int get followerCount;
  @override
  int get followingCount;
  @override
  int get photoCount;
  @override
  KtList<String> get followingIDs;
  @override
  KtList<String> get followerIDs;
  @override
  KtList<String> get followedOrgIDs;
  @override
  KtList<String> get photos;
  @override
  bool get isNotified;
  @override
  String get shareLink;
  @override
  _$UserStateCopyWith<_UserState> get copyWith;
}
