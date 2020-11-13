part of 'category_posts_bloc.dart';

@freezed
abstract class CategoryPostsState with _$CategoryPostsState {
  const factory CategoryPostsState.initial() = Initial;
  const factory CategoryPostsState.loadInProgress() = DataTransferInProgress;
  const factory CategoryPostsState.loadSuccess(KtList<Post> posts) =
      LoadSuccess;
  const factory CategoryPostsState.loadFailure(PostFailure postFailure) =
      LoadFailure;
}
