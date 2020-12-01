import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_calendar_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_event_detail_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'create_event_event.dart';
part 'create_event_state.dart';

part 'create_event_bloc.freezed.dart';

@injectable
class CreateEventBloc extends Bloc<CreateEventEvent, CreateEventState> {
  final ICalendarService _calendarService;
  final IEventDetailService _eventDetailService;
  final IOrgService _orgService;
  final IAnalyticsService _analyticsService;

  CreateEventBloc(this._calendarService, this._eventDetailService,
      this._orgService, this._analyticsService)
      : super(CreateEventState.initial());

  StreamSubscription<KtList<String>> _adminStreamSubscription;

  @override
  Stream<CreateEventState> mapEventToState(
    CreateEventEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        await _adminStreamSubscription?.cancel();
        _adminStreamSubscription = _calendarService
            .getAdminIDs(e.currentUserID)
            .listen((admins) =>
                add(CreateEventEvent.adminReceived(admins, e.currentUserID)));

        yield e.initialEventOption.fold(() => state, (initialEvent) {
          return state.copyWith(
            event: state.event.copyWith(senderID: e.currentUserID),
            isEditing: true,
          );
        });

        yield state.copyWith(
          event: state.event.copyWith(senderID: e.currentUserID),
        );
      },
      adminReceived: (e) async* {
        KtList<OrgList> orgs = await _orgService.getOrgKtList(e.admins);
        User currentUser =
            await _eventDetailService.getUserProfile(e.currentUserID);
        OrgList currentUserList = OrgList(
            primaryColor: currentUser.primaryColor,
            secondaryColor: currentUser.primaryColor,
            abbv: '',
            orgID: currentUser.userID,
            profileImageUrl: currentUser.profileImageUrl,
            name: currentUser.profileName);
        final mOrgs = orgs.toMutableList();
        mOrgs.toMutableList();
        mOrgs.addAt(0, currentUserList);

        yield state.copyWith(
          admins: mOrgs,
        );
      },
      eventNameChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(eventName: e.eventName),
          saveFailureOrSuccessOption: none(),
        );
      },
      startTimeChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(startTime: e.startTime),
          saveFailureOrSuccessOption: none(),
        );
      },
      endTimeChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(endTime: e.endTime),
          saveFailureOrSuccessOption: none(),
        );
      },
      eventLocationChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(eventLocation: e.eventLocation),
          saveFailureOrSuccessOption: none(),
        );
      },
      eventCaptionChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(eventCaption: e.eventCaption),
          saveFailureOrSuccessOption: none(),
        );
      },
      eventUrlChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(eventUrl: e.eventUrl),
          saveFailureOrSuccessOption: none(),
        );
      },
      eventImageUrlChanged: (e) async* {
        String eventImageUrl = await _calendarService.uploadEventImage(e.image);
        yield state.copyWith(
          event: state.event.copyWith(eventImageUrl: eventImageUrl),
          saveFailureOrSuccessOption: none(),
        );
      },
      idChanged: (e) async* {
        if (e.id == e.currentUserID) {
          yield state.copyWith(
            id: e.currentUserID,
            event: state.event
                .copyWith(isOrg: false, senderID: e.currentUserID, orgID: ''),
            saveFailureOrSuccessOption: none(),
          );
        } else {
          yield state.copyWith(
            id: e.id,
            event: state.event
                .copyWith(isOrg: true, orgID: e.id, senderID: e.currentUserID),
            saveFailureOrSuccessOption: none(),
          );
        }
      },
      categoryChanged: (e) async* {
        final List<String> newList =
            List.from(state.categories, growable: true);
        if (newList.contains(e.category)) {
          newList.remove(e.category);
        } else {
          if (newList.length < 3) {
            newList.add(e.category);
          }
        }
        yield state.copyWith(
          categories: newList,
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<EventFailure, Unit> failureOrSuccess;
        String profileImageUrl = '';

        if (state.event.eventImageUrl.isEmpty) {
          state.admins.forEach((element) {
            if (element.orgID.getOrCrash() == state.id) {
              profileImageUrl = element.profileImageUrl;
            }
          });
        } else {
          profileImageUrl = state.event.eventImageUrl;
        }

        yield state.copyWith(
          //event: state.event.copyWith(eventImageUrl: profileImageUrl),
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.event.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _calendarService.update(
                  event: state.event,
                  categories: state.categories,
                  orgID: state.id)
              : await _calendarService.create(
                  profileImageUrl: profileImageUrl,
                  event: state.event,
                  categories: state.categories,
                  orgID: state.id);
        }
        if (failureOrSuccess.isRight()) {
          await _analyticsService.logEventCreated(
              hasImage: state.event.eventImageUrl.isNotEmpty);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
