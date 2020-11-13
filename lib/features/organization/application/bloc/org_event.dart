part of 'org_bloc.dart';

@freezed
abstract class OrgEvent with _$OrgEvent {
  const factory OrgEvent.getData({String orgID, String currentUserID}) =
      GetOrgData;
  const factory OrgEvent.addFollower(String orgID, String currentUserID) =
      AddFollower;
  const factory OrgEvent.removeFollower(String orgID, String currentUserID) =
      RemoveFollower;
  const factory OrgEvent.adminsReceived(
      KtList<String> admins, String currentUserID) = AdminsReceived;
  const factory OrgEvent.membersReceived(
      KtList<String> userIDList, String currentUserID) = MemberIDListReceived;
  const factory OrgEvent.addUserToNotify(String orgID) = AddUserToNotify;
  const factory OrgEvent.removeUserFromNotify(String orgID) =
      RemoveUserFromNotify;
  const factory OrgEvent.blockOrg(String orgID) = BlockOrg;
  const factory OrgEvent.unBlockOrg(String orgID) = UnBlockOrg;
}
