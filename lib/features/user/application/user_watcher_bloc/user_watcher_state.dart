part of 'user_watcher_bloc.dart';

@freezed
abstract class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState.initial() = Initial;
  const factory UserWatcherState.loadInProgress() = LoadInProgress;
  const factory UserWatcherState.loadSuccess(User user) = LoadSuccess;
  const factory UserWatcherState.loadFailure(UserFailure f) = LoadFailure;
}
