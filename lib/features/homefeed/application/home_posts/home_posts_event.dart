part of 'home_posts_bloc.dart';

@freezed
abstract class HomePostsEvent with _$HomePostsEvent {
  const factory HomePostsEvent.getData(String currentUserID) = GetData;
  const factory HomePostsEvent.postsReceived(
      Either<PostFailure, KtList<Post>> failureOrNotes) = _PostsReceived;
  const factory HomePostsEvent.requestMoreData(String currentUserID) =
      _RequestMoreData;
}
