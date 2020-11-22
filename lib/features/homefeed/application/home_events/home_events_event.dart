part of 'home_events_bloc.dart';

@freezed
abstract class HomeEventsEvent with _$HomeEventsEvent {
  const factory HomeEventsEvent.getData() = GetData;
  const factory HomeEventsEvent.eventsReceived(
      Either<EventFailure, KtList<Event>> failureOrNotes) = _EventsReceived;
  const factory HomeEventsEvent.requestMoreData() = _RequestMoreData;
}
