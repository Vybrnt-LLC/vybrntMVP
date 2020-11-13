import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_event_detail_service.dart';

import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'event_tile_event.dart';
part 'event_tile_state.dart';
part 'event_tile_bloc.freezed.dart';

@injectable
class EventTileBloc extends Bloc<EventTileEvent, EventTileState> {
  final IEventDetailService _eventDetailService;

  EventTileBloc(this._eventDetailService) : super(EventTileState.initial());

  @override
  Stream<EventTileState> mapEventToState(
    EventTileEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      if (e.event.isOrg) {
        final org = await _eventDetailService.getOrgProfile(e.event.orgID);
        final user = await _eventDetailService.getUserProfile(e.event.senderID);

        yield state.copyWith(
          org: org,
          user: user,
        );
      } else {
        final user = await _eventDetailService.getUserProfile(e.event.senderID);

        yield state.copyWith(
          user: user,
        );
      }
    }, deleteEvent: (e) async* {
      await _eventDetailService.deleteEvent(e.event);
      yield state;
    });
  }
}
