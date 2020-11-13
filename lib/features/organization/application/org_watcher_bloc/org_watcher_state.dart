part of 'org_watcher_bloc.dart';

@freezed
abstract class OrgWatcherState with _$OrgWatcherState {
  const factory OrgWatcherState.initial() = Initial;
  const factory OrgWatcherState.loadInProgress() = LoadInProgress;
  const factory OrgWatcherState.loadSuccess(Organization org) = LoadSuccess;
  const factory OrgWatcherState.loadFailure(PostFailure f) = LoadFailure;
}
