part of 'event_detail_bloc.dart';

@freezed
abstract class EventDetailState with _$EventDetailState {
  const factory EventDetailState({
    @required KtList<UserList> rsvpList,
    @required Organization org,
    @required User user,
    @required bool isRSVPed,
  }) = _EventDetailState;

  factory EventDetailState.initial() => EventDetailState(
      isRSVPed: false,
      rsvpList: KtList.empty(),
      org: Organization.empty(),
      user: User.empty());
  // const factory EventDetailState.loadInProgress() = DataTransferInProgress;
  // const factory EventDetailState.loadSuccess(
  //     {KtList<User> rsvpList,
  //     OrgCalendar org,
  //     User user,
  //     bool isRSVPed}) = LoadSuccess;
  // const factory EventDetailState.loadFailure(EventFailure eventFailure) =
  //     LoadFailure;
}
