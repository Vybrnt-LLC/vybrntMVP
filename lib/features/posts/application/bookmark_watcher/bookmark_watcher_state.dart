part of 'bookmark_watcher_bloc.dart';

@freezed
abstract class BookmarkWatcherState with _$BookmarkWatcherState {
  const factory BookmarkWatcherState.initial() = Initial;
  const factory BookmarkWatcherState.loadInProgress() = LoadInProgress;
  const factory BookmarkWatcherState.loadSuccess(KtList<Post> posts) =
      LoadSuccess;
  const factory BookmarkWatcherState.loadFailure(PostFailure f) = LoadFailure;
}
