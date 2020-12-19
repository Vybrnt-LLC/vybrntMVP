part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.getData(Post post,
      {String senderID, String currentUserID, String orgID}) = _GetData;

  const factory PostActorEvent.openPostDetail(Post post, {bool commenting}) =
      _Opened;
  const factory PostActorEvent.delete(Post post) = _Delete;

  const factory PostActorEvent.commentBodyChanged(String commnentBody) =
      _CommentBodyChanged;

  const factory PostActorEvent.submitComment(String currentUserID, Post post) =
      _SubmitComment;

  const factory PostActorEvent.likesReceived(
      Either<PostFailure, KtList<String>> likesOrFailure,
      String currentUserID) = _LikesReceived;
  const factory PostActorEvent.repostsReceived(
      Either<PostFailure, KtList<String>> repostsOrFailure,
      String currentUserID) = _RepostsReceived;
  const factory PostActorEvent.commentsReceived(
      Either<PostFailure, KtList<Comment>> commentsOrFailure,
      String currentUserID) = _CommentsReceived;
  const factory PostActorEvent.bookmarksReceived(
      Either<PostFailure, KtList<String>> bookmarksOrFailure,
      String currentUserID) = _BookmarksReceived;

  const factory PostActorEvent.toggleLikePost(Post post, String currentUserID) =
      _Liked;
  const factory PostActorEvent.toggleRepostPost(
      Post post, String currentUserID) = _Reposted;
  const factory PostActorEvent.toggleBookmarkPost(
      Post post, String currentUserID) = _Bookmarked;
  const factory PostActorEvent.setCurrentScreen() = _SetCurrentScreen;
  const factory PostActorEvent.getPost(
      {String postID,
      String type,
      String typeID,
      String currentUserID}) = GetPost;
}
