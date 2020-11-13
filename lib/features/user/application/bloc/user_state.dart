part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @required bool isFollowing,
    @required bool isBlocking,
    @required int followerCount,
    @required int followingCount,
    @required int photoCount,
    @required KtList<String> followingIDs,
    @required KtList<String> followerIDs,
    @required KtList<String> followedOrgIDs,
    @required KtList<String> photos,
    @required bool isNotified,
  }) = _UserState;

  factory UserState.initial() => UserState(
      followerCount: 0,
      isBlocking: false,
      isFollowing: false,
      isNotified: false,
      followingCount: 0,
      photoCount: 0,
      followingIDs: KtList.empty(),
      followedOrgIDs: KtList.empty(),
      followerIDs: KtList.empty(),
      photos: KtList.empty());
}
