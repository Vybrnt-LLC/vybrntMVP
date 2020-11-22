part of 'home_posts_bloc.dart';

@freezed
abstract class HomePostsEvent with _$HomePostsEvent {
  const factory HomePostsEvent.getData() = GetData;
  const factory HomePostsEvent.postsReceived(
      Either<PostFailure, KtList<Post>> failureOrNotes) = _PostsReceived;
  const factory HomePostsEvent.requestMoreData() = _RequestMoreData;
}
