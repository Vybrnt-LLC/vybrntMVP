part of 'event_list_bloc.dart';

@freezed
abstract class EventListEvent with _$EventListEvent {
  const factory EventListEvent.getData(String orgID, bool isOrg) = GetData;
  const factory EventListEvent.eventsReceived(
      Either<EventFailure, KtList<Event>> failureOrNotes) = _EventsReceived;
}
