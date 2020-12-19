part of 'event_detail_bloc.dart';

@freezed
abstract class EventDetailEvent with _$EventDetailEvent {
  const factory EventDetailEvent.getData(
      {String senderID,
      String currentUserID,
      String orgID,
      String eventID,
      bool isOrg}) = GetUserData;
  const factory EventDetailEvent.addToRSVP(Event event) = AddToRSVP;
  const factory EventDetailEvent.removeFromRSVP(Event event) = RemoveFromRSVP;
  const factory EventDetailEvent.rsvpListReceived(
      Either<EventFailure, KtList<UserList>> rsvpList,
      String currentUserID) = RSVPListReceived;
  const factory EventDetailEvent.deleteEvent(Event event) = DeleteEvent;
  const factory EventDetailEvent.getEvent(
      {String eventID, String type, String typeID}) = GetEvent;
}
