import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_calendar_service.dart';

import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

part 'calendar_bloc.freezed.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

const String screenName = 'calendar';

@injectable
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final ICalendarService _calendarService;

  CalendarBloc(
    this._calendarService,
  ) : super(CalendarState.initial());

  StreamSubscription<Either<EventFailure, KtList<Event>>>
      _eventStreamSubscription;

  @override
  Stream<CalendarState> mapEventToState(
    CalendarEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const CalendarState.loadInProgress();
        await _eventStreamSubscription?.cancel();
        _eventStreamSubscription = _calendarService
            .watchFollowedEvents()
            .listen((event) => add(CalendarEvent.eventsReceived(event)));
      },
      eventsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => CalendarState.loadFailure(f),
          (events) => CalendarState.loadSuccess(events),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _eventStreamSubscription.cancel();
    return super.close();
  }
}
