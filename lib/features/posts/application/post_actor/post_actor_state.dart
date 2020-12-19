part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorState with _$PostActorState {
  const factory PostActorState(
      {@required Organization org,
      @required Post post,
      @required User senderUser,
      @required User reposterUser,
      @required bool isCurrentUsersPost,
      @required bool isLiked,
      @required bool isReposted,
      @required bool isBookmarked,
      @required Comment comment,
      @required KtList<String> likes,
      @required KtList<String> reposts,
      @required KtList<Comment> comments,
      @required KtList<String> bookmarkedPosts}) = _PostActorState;

  factory PostActorState.inital() => _PostActorState(
        org: Organization.empty(),
        post: Post.empty(),
        senderUser: User.empty(),
        reposterUser: User.empty(),
        isCurrentUsersPost: false,
        comment: Comment.empty(),
        isLiked: false,
        isReposted: false,
        isBookmarked: false,
        likes: KtList<String>.empty(),
        reposts: KtList<String>.empty(),
        comments: KtList<Comment>.empty(),
        bookmarkedPosts: KtList<String>.empty(),
      );
}
