part of 'user_watcher_bloc.dart';

@freezed
abstract class UserWatcherEvent with _$UserWatcherEvent {
  const factory UserWatcherEvent.getData(
      {String userID, String currentUserID}) = GetUserData;
  const factory UserWatcherEvent.userReceived(User user) = UserReceived;
}
