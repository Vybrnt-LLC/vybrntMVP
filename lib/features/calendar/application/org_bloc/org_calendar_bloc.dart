import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_calendar_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_calendar.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/org_failure.dart';

part 'org_calendar_bloc.freezed.dart';
part 'org_calendar_event.dart';
part 'org_calendar_state.dart';

@injectable
class OrgCalendarBloc extends Bloc<OrgCalendarEvent, OrgCalendarState> {
  final ICalendarService _calendarService;
  final IOrgService _orgService;

  OrgCalendarBloc(
    this._calendarService,
    this._orgService,
  ) : super(OrgCalendarState.initial());

  StreamSubscription<Either<OrgFailure, KtList<OrgCalendar>>>
      _orgStreamSubscription;

  @override
  Stream<OrgCalendarState> mapEventToState(
    OrgCalendarEvent event,
  ) async* {
    yield* event.map(
      toggleTrue: (e) async* {
        _calendarService.toggleTrue(e.currentUserID, e.orgID);
        await _orgStreamSubscription?.cancel();
        _orgStreamSubscription = _calendarService.watchFollowedOrgs().listen(
            (orgs) =>
                add(OrgCalendarEvent.orgsReceived(orgs, e.currentUserID)));
      },
      toggleFalse: (e) async* {
        _calendarService.toggleFalse(e.currentUserID, e.orgID);
        await _orgStreamSubscription?.cancel();
        _orgStreamSubscription = _calendarService.watchFollowedOrgs().listen(
            (orgs) =>
                add(OrgCalendarEvent.orgsReceived(orgs, e.currentUserID)));
      },
      getData: (e) async* {
        yield const OrgCalendarState.loadInProgress();
        await _orgStreamSubscription?.cancel();
        _orgStreamSubscription = _calendarService.watchFollowedOrgs().listen(
            (orgs) =>
                add(OrgCalendarEvent.orgsReceived(orgs, e.currentUserID)));
      },
      orgsReceived: (e) async* {
        KtList<String> orgIDStrings = KtList.empty();
        final mOrgIDStrings = orgIDStrings.toMutableList();

        e.failureOrNotes.fold((l) => print('failure'), (r) {
          for (int i = 0; i < r.size; i++) {
            mOrgIDStrings.add(r[i].orgID.getOrCrash());
          }
        });
        final updatedOrgs = await _orgService.getOrgKtList(mOrgIDStrings);
        // User currentUser =
        //     await _eventDetailService.getUserProfile(e.currentUserID);
        // OrgCalendar currentUserList = OrgCalendar(
        //     orgID: currentUser.userID,
        //     profileImageUrl: currentUser.profileImageUrl,
        //     name: currentUser.profileName,
        //     abbv: '',
        //     isToggled: true);
        yield e.failureOrNotes.fold(
          (f) => OrgCalendarState.loadFailure(f),
          (orgs) {
            // final mOrgs = orgs.toMutableList();
            // mOrgs.addAt(0, currentUserList);
            // mOrgs.toMutableList();
            return OrgCalendarState.loadSuccess(orgs, updatedOrgs);
          },
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _orgStreamSubscription.cancel();
    return super.close();
  }
}
