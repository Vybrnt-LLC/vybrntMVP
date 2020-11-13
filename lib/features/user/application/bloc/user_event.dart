part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getData({String userID, String currentUserID}) =
      GetUserData;
  const factory UserEvent.addFollower(String userID, String currentUserID) =
      AddFollower;
  const factory UserEvent.removeFollower(String userID, String currentUserID) =
      RemoveFollower;
  const factory UserEvent.blockUser(String userID) = BlockUser;
  const factory UserEvent.unBlockUser(String userID) = UnBlockUser;
  const factory UserEvent.followingReceived(
      KtList<String> followingIDs, String currentUserID) = FollowingReceived;
  const factory UserEvent.followersReceived(
      KtList<String> followerIDs, String currentUserID) = FollowersReceived;
  const factory UserEvent.followedOrgsReceived(
          KtList<String> followedOrgIDs, String currentUserID) =
      FollowedOrgsReceived;
  const factory UserEvent.photosReceived(
      KtList<String> photos, String currentUserID) = PhotosReceived;
  const factory UserEvent.addUserToNotify(String userID) = AddUserToNotify;
  const factory UserEvent.removeUserFromNotify(String userID) =
      RemoveUserFromNotify;
}
