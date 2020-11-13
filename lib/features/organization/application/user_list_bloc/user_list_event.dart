part of 'user_list_bloc.dart';

@freezed
abstract class UserListEvent with _$UserListEvent {
  const factory UserListEvent.getUserData(KtList<String> userIDList) =
      GetUserData;
  const factory UserListEvent.getOrgData(KtList<String> orgIDList) = AddToRSVP;
}
