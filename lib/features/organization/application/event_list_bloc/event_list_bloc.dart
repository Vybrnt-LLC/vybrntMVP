import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';

part 'event_list_event.dart';
part 'event_list_state.dart';
part 'event_list_bloc.freezed.dart';

@injectable
class EventListBloc extends Bloc<EventListEvent, EventListState> {
  final IOrgService _orgService;

  EventListBloc(this._orgService) : super(EventListState.initial());

  StreamSubscription<Either<EventFailure, KtList<Event>>>
      _eventStreamSubscription;

  @override
  Stream<EventListState> mapEventToState(
    EventListEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const EventListState.loadInProgress();
        await _eventStreamSubscription?.cancel();
        _eventStreamSubscription = _orgService
            .watchOrgEvents(e.orgID, e.isOrg)
            .listen((event) => add(EventListEvent.eventsReceived(event)));
      },
      eventsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => EventListState.loadFailure(f),
          (events) => EventListState.loadSuccess(events),
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
