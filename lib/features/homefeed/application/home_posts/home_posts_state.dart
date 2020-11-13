part of 'home_posts_bloc.dart';

@freezed
abstract class HomePostsState with _$HomePostsState {
  const factory HomePostsState.initial() = Initial;
  const factory HomePostsState.loadInProgress() = DataTransferInProgress;
  const factory HomePostsState.loadSuccess(KtList<Post> posts) = LoadSuccess;
  const factory HomePostsState.loadFailure(PostFailure postFailure) =
      LoadFailure;
}
