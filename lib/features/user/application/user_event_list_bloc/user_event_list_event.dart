part of 'user_event_list_bloc.dart';

@freezed
abstract class UserEventListEvent with _$UserEventListEvent {
  const factory UserEventListEvent.getData(String orgID) = GetData;
  const factory UserEventListEvent.eventsReceived(
      Either<EventFailure, KtList<Event>> failureOrNotes) = _UserEventsReceived;
}
