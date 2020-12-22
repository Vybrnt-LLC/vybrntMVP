part of 'event_notification_bloc.dart';

@freezed
abstract class EventNotificationEvent with _$EventNotificationEvent {
  const factory EventNotificationEvent.getEvent(
      {String eventID,
      String type,
      String typeID,
      String currentUserID}) = GetEvent;
}
