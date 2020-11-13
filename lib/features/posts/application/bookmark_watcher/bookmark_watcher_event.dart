part of 'bookmark_watcher_bloc.dart';

@freezed
abstract class BookmarkWatcherEvent with _$BookmarkWatcherEvent {
  const factory BookmarkWatcherEvent.postsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _PostsReceived;
  const factory BookmarkWatcherEvent.getData() = _GetData;
}
