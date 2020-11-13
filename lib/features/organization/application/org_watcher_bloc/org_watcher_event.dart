part of 'org_watcher_bloc.dart';

@freezed
abstract class OrgWatcherEvent with _$OrgWatcherEvent {
  const factory OrgWatcherEvent.getData({String orgID, String currentUserID}) =
      GetOrgData;
  const factory OrgWatcherEvent.orgReceived(Organization org) = OrgReceived;
}
