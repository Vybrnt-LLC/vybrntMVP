part of 'category_events_bloc.dart';

@freezed
abstract class CategoryEventsEvent with _$CategoryEventsEvent {
  const factory CategoryEventsEvent.getData(
      String currentUserID, String documentName) = GetData;
  const factory CategoryEventsEvent.eventsReceived(
      Either<EventFailure, KtList<Event>> failureOrNotes) = _EventsReceived;
}
