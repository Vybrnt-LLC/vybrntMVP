part of 'post_notification_bloc.dart';

@freezed
abstract class PostNotificationEvent with _$PostNotificationEvent {
  const factory PostNotificationEvent.getPost(
      {String postID,
      String type,
      String typeID,
      String currentUserID}) = GetPost;
}
