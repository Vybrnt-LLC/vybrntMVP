part of 'activity_bloc.dart';

@freezed
abstract class ActivityState with _$ActivityState {
  const factory ActivityState.initial() = Initial;
  const factory ActivityState.loadInProgress() = LoadInProgress;
  const factory ActivityState.loadSuccess(KtList<Activity> activities) =
      LoadSuccess;
  const factory ActivityState.loadFailure(ActivityFailure f) = LoadFailure;
}
