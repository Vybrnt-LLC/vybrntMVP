part of 'post_watcher_bloc.dart';

@freezed
abstract class PostWatcherEvent with _$PostWatcherEvent {
  const factory PostWatcherEvent.postsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _PostsReceived;
  const factory PostWatcherEvent.getData(String postCollectionID, bool isOrg) =
      _GetData;
}

// @freezed
// abstract class PostActorEvent with _$PostActorEvent {
//   const factory PostActorEvent.getData({Post post}) = _GetData;
//   const factory PostActorEvent.openPostDetail(Post post) = _Opened;
//   const factory PostActorEvent.toggleLikePost(Post post) = _Liked;
//   const factory PostActorEvent.toggleRepostPost(Post post) = _Reposted;
// }
