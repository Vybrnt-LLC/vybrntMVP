part of 'org_bloc.dart';

@freezed
abstract class OrgState with _$OrgState {
  const factory OrgState({
    @required bool isAdmin,
    @required bool isFollowing,
    @required bool isBlocking,
    @required int postCount,
    @required int memberCount,
    @required int photoCount,
    @required KtList<String> userIDList,
    @required bool isNotified,
    @required String shareLink,
  }) = _OrgState;

  factory OrgState.initial() => OrgState(
      isBlocking: false,
      postCount: 0,
      isAdmin: false,
      isFollowing: false,
      isNotified: false,
      memberCount: 0,
      photoCount: 0,
      userIDList: KtList.empty(),
      shareLink: '');
}
