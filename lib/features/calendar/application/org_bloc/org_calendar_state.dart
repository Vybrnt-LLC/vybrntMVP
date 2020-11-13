part of 'org_calendar_bloc.dart';

@freezed
abstract class OrgCalendarState with _$OrgCalendarState {
  const factory OrgCalendarState.initial() = Initial;
  const factory OrgCalendarState.loadInProgress() = DataTransferInProgress;
  const factory OrgCalendarState.loadSuccess(
          KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs) =
      LoadSuccess;
  const factory OrgCalendarState.loadFailure(OrgFailure eventFailure) =
      LoadFailure;
}
