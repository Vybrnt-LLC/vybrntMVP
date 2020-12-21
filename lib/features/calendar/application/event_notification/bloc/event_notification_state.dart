part of 'event_notification_bloc.dart';

@freezed
abstract class EventNotificationState with _$EventNotificationState {
  const factory EventNotificationState.initial() = _Initial;
  const factory EventNotificationState.loadInProgress() = _LoadInProgress;
  const factory EventNotificationState.loadSuccess(Event event) = _LoadSuccess;
  const factory EventNotificationState.loadFailure(EventFailure f) =
      _LoadFailure;
}
