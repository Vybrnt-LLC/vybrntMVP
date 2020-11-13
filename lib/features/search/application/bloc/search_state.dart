part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
      {@required KtList<UserList> users,
      @required KtList<OrgList> orgs,
      @required KtList<OrgList> verifiedOrgs}) = _SearchState;

  factory SearchState.initial() => SearchState(
        users: KtList.empty(),
        orgs: KtList.empty(),
        verifiedOrgs: KtList.empty(),
      );
}
