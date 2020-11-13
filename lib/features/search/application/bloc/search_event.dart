part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getUserSearch(String name) = GetUserSearch;
  const factory SearchEvent.getSearch(String name) = GetSearch;
  const factory SearchEvent.getOrgSearch(String name) = GetOrgSearch;
  const factory SearchEvent.getVerifiedOrgSearch(String name) =
      GetVerifiedOrgSearch;
  const factory SearchEvent.usersReceived(KtList<UserList> users) =
      UsersReceived;
  const factory SearchEvent.orgsReceived(KtList<OrgList> orgs) = OrgsReceived;
  const factory SearchEvent.verifiedOrgsReceived(KtList<OrgList> verifiedOrgs) =
      VerifiedOrgsReceived;
}
