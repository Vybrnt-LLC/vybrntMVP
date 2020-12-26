import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/core/routes/i_dynamic_link_serivce.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';

import 'package:vybrnt_mvp/features/calendar/domain/i_event_detail_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';

import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

part 'event_detail_bloc.freezed.dart';
part 'event_detail_event.dart';
part 'event_detail_state.dart';

const String screenName = 'event_detail';

@injectable
class EventDetailBloc extends Bloc<EventDetailEvent, EventDetailState> {
  final IEventDetailService _eventDetailService;
  final IOrgService _orgService;
  final IAnalyticsService _analyticsService;
  final IDynamicLinkService _dynamicLinkService;

  EventDetailBloc(this._eventDetailService, this._orgService,
      this._analyticsService, this._dynamicLinkService)
      : super(EventDetailState.initial());

  StreamSubscription<Either<EventFailure, KtList<UserList>>>
      _rsvpStreamSubscription;

  @override
  Stream<EventDetailState> mapEventToState(
    EventDetailEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      await _analyticsService.setCurrentScreen(screenName);
      String shareLink;
      if (e.orgID.isNotEmpty) {
        shareLink = await _dynamicLinkService.createEventLink(
            type: 'org', typeID: e.orgID, eventID: e.eventID);
      } else {
        shareLink = await _dynamicLinkService.createEventLink(
            type: 'user', typeID: e.senderID, eventID: e.eventID);
      }
      if (e.isOrg) {
        final org = await _eventDetailService.getOrgProfile(e.orgID);
        final user = await _eventDetailService.getUserProfile(e.senderID);
        final isRSVPed = await _eventDetailService.isRSVPed(
            currentUserID: e.currentUserID,
            eventID: e.eventID,
            isOrg: e.isOrg,
            userID: e.senderID,
            orgID: e.orgID);
        yield state.copyWith(
          org: org,
          user: user,
          isRSVPed: isRSVPed,
          shareLink: shareLink,
        );
        await _rsvpStreamSubscription?.cancel();
        _rsvpStreamSubscription = _eventDetailService
            .rsvpList(
                eventID: e.eventID,
                isOrg: e.isOrg,
                userID: e.senderID,
                orgID: e.orgID)
            .listen((rsvpList) => add(
                EventDetailEvent.rsvpListReceived(rsvpList, e.currentUserID)));
      } else {
        final user = await _eventDetailService.getUserProfile(e.senderID);
        final isRSVPed = await _eventDetailService.isRSVPed(
            currentUserID: e.currentUserID,
            eventID: e.eventID,
            isOrg: e.isOrg,
            userID: e.senderID,
            orgID: e.orgID);

        yield state.copyWith(
            user: user, isRSVPed: isRSVPed, shareLink: shareLink);
        await _rsvpStreamSubscription?.cancel();
        _rsvpStreamSubscription = _eventDetailService
            .rsvpList(
                eventID: e.eventID,
                isOrg: e.isOrg,
                userID: e.senderID,
                orgID: e.orgID)
            .listen((rsvpList) => add(
                EventDetailEvent.rsvpListReceived(rsvpList, e.currentUserID)));
      }
    }, rsvpListReceived: (e) async* {
      final currentUser = await _orgService.getUserList(e.currentUserID);
      yield state.copyWith(
          isRSVPed:
              e.rsvpList.fold((l) => false, (r) => r.contains(currentUser)),
          rsvpList:
              e.rsvpList.fold((l) => KtList.empty(), (rsvpList) => rsvpList));
    }, addToRSVP: (e) async* {
      await _eventDetailService.addToRSVP(e.event);
    }, removeFromRSVP: (e) async* {
      await _eventDetailService.removeFromRSVP(e.event);
    }, deleteEvent: (e) async* {
      await _eventDetailService.deleteEvent(e.event);
      yield state;
    }, getEvent: (e) async* {
      await _eventDetailService.getEvent(
          eventID: e.eventID, typeID: e.typeID, type: e.type);
    });
  }
}
