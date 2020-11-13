part of 'calendar_bloc.dart';

@freezed
abstract class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.getData(String currentUserID) = GetData;
  const factory CalendarEvent.eventsReceived(Either<EventFailure, KtList<Event>> failureOrNotes) = _EventsReceived;
}
