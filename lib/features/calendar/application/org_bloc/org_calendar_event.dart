part of 'org_calendar_bloc.dart';

@freezed
abstract class OrgCalendarEvent with _$OrgCalendarEvent {
  const factory OrgCalendarEvent.toggleTrue(String currentUserID, String orgID) = ToggledTrue;
  const factory OrgCalendarEvent.toggleFalse(String currentUserID, String orgID) = ToggledFalse; 
  const factory OrgCalendarEvent.getData(String currentUserID) = GetData;
  const factory OrgCalendarEvent.orgsReceived(Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes, String currentUserID) = _OrgsReceived;
}