part of 'category_posts_bloc.dart';

@freezed
abstract class CategoryPostsEvent with _$CategoryPostsEvent {
  const factory CategoryPostsEvent.getData(
      String currentUserID, String documentName) = GetData;
  const factory CategoryPostsEvent.postsReceived(
      Either<PostFailure, KtList<Post>> failureOrNotes) = _PostsReceived;
}
