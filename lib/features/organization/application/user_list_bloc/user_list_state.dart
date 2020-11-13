part of 'user_list_bloc.dart';

@freezed
abstract class UserListState with _$UserListState {
  const factory UserListState({
    @required bool isOrgList,
    @required KtList<UserList> users,
    @required KtList<OrgList> orgs,
  }) = _UserListState;

  factory UserListState.initial() => UserListState(
        isOrgList: false,
        users: KtList.empty(),
        orgs: KtList.empty(),
      );
}
