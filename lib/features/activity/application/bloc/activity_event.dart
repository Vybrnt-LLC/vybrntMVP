part of 'activity_bloc.dart';

@freezed
abstract class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.activitiesReceived(
          Either<ActivityFailure, KtList<Activity>> failureOrPosts) =
      _ActivitiesReceived;
  const factory ActivityEvent.getData() = _GetData;
}
