part of 'post_notification_bloc.dart';

@freezed
abstract class PostNotificationState with _$PostNotificationState {
  const factory PostNotificationState.initial() = _Initial;
  const factory PostNotificationState.loadInProgress() = _LoadInProgress;
  const factory PostNotificationState.loadSuccess(Post post) = _LoadSuccess;
  const factory PostNotificationState.loadFailure(PostFailure f) = _LoadFailure;
}
