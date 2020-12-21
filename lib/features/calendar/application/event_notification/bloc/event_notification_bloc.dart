import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_calendar_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_event_detail_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

part 'event_notification_event.dart';
part 'event_notification_state.dart';
part 'event_notification_bloc.freezed.dart';

@injectable
class EventNotificationBloc
    extends Bloc<EventNotificationEvent, EventNotificationState> {
  final IEventDetailService _eventDetailService;
  EventNotificationBloc(this._eventDetailService) : super(_Initial());

  @override
  Stream<EventNotificationState> mapEventToState(
    EventNotificationEvent event,
  ) async* {
    yield const EventNotificationState.loadInProgress();
    var post = await _eventDetailService.getEvent(
        eventID: event.eventID, typeID: event.typeID, type: event.type);
    yield EventNotificationState.loadSuccess(post);
  }
}
