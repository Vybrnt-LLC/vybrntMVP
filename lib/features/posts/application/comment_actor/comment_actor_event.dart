part of 'comment_actor_bloc.dart';

@freezed
abstract class CommentActorEvent with _$CommentActorEvent {
  const factory CommentActorEvent.getData(Comment comment) = _GetData;

  const factory CommentActorEvent.deleteComment(Post post, Comment comment) =
      _DeleteComment;
}
