part of 'create_event_bloc.dart';

@freezed
abstract class CreateEventEvent with _$CreateEventEvent {
  const factory CreateEventEvent.initialized(
      Option<Event> initialEventOption, String currentUserID) = _Initialized;
  const factory CreateEventEvent.adminReceived(
      KtList<String> admins, String currentUserID) = _AdminReceived;
  const factory CreateEventEvent.eventNameChanged(String eventName) =
      _EventNameChanged;
  const factory CreateEventEvent.startTimeChanged(DateTime startTime) =
      _StartTimeChanged;
  const factory CreateEventEvent.endTimeChanged(DateTime endTime) =
      _EndTimeChanged;
  const factory CreateEventEvent.eventImageUrlChanged(File image) =
      _EventImageUrlChanged;
  const factory CreateEventEvent.eventUrlChanged(String eventUrl) =
      _EventUrlChanged;
  const factory CreateEventEvent.eventCaptionChanged(String eventCaption) =
      _EventCaptionChanged;
  const factory CreateEventEvent.eventLocationChanged(String eventLocation) =
      _EventLocationChanged;
  const factory CreateEventEvent.idChanged(String id, String currentUserID) =
      _IdChanged;
  const factory CreateEventEvent.categoryChanged(String category) =
      _CategoryChanged;
  const factory CreateEventEvent.saved() = _Saved;
}
