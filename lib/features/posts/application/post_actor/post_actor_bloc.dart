import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/i_post_repository.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'post_actor_event.dart';
part 'post_actor_state.dart';

part 'post_actor_bloc.freezed.dart';

const String screenName = 'post_detail';

@injectable
class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  final IPostRepository _postRepository;
  final IAnalyticsService _analyticsService;
  PostActorBloc(this._postRepository, this._analyticsService)
      : super(PostActorState.inital());

  StreamSubscription<Either<PostFailure, KtList<String>>>
      _likeStreamSubscription;
  StreamSubscription<Either<PostFailure, KtList<String>>>
      _repostStreamSubscription;
  StreamSubscription<Either<PostFailure, KtList<Comment>>>
      _commentStreamSubscription;
  StreamSubscription<Either<PostFailure, KtList<String>>>
      _bookmarkStreamSubscription;

  @override
  Stream<PostActorState> mapEventToState(
    PostActorEvent event,
  ) async* {
    yield* event.map(
        getData: (e) async* {
          Organization org = Organization.empty();
          User reposterUser = User.empty();
          if (e.post.orgID.getOrCrash().isNotEmpty) {
            org =
                await _postRepository.getOrgProfile(e.post.orgID.getOrCrash());
          }

          final senderUser = await _postRepository
              .getUserProfile(e.post.senderID.getOrCrash());

          if (e.post.repostID.getOrCrash().isNotEmpty) {
            reposterUser = await _postRepository
                .getUserProfile(e.post.repostID.getOrCrash());
          }

          final isCurrentUsersPost =
              _postRepository.isSignedInUsersPost(e.currentUserID, e.post);
          await _likeStreamSubscription?.cancel();
          _likeStreamSubscription = _postRepository.watchLikes(e.post).listen(
              (likes) =>
                  add(PostActorEvent.likesReceived(likes, e.currentUserID)));
          await _repostStreamSubscription?.cancel();
          _repostStreamSubscription = _postRepository
              .watchReposts(e.post)
              .listen((reposts) => add(
                  PostActorEvent.repostsReceived(reposts, e.currentUserID)));
          await _commentStreamSubscription?.cancel();
          _commentStreamSubscription = _postRepository
              .watchComments(e.post)
              .listen((comments) => add(
                  PostActorEvent.commentsReceived(comments, e.currentUserID)));
          await _bookmarkStreamSubscription?.cancel();
          _bookmarkStreamSubscription = _postRepository
              .watchBookmarks(e.post)
              .listen((bookmarks) => add(PostActorEvent.bookmarksReceived(
                  bookmarks, e.currentUserID)));

          yield state.copyWith(
              org: org,
              senderUser: senderUser,
              reposterUser: reposterUser,
              isCurrentUsersPost: isCurrentUsersPost);
        },
        openPostDetail: (_Opened value) async* {},
        toggleLikePost: (_Liked value) async* {
          _likeStreamSubscription?.cancel();

          if (state.isLiked) {
            _postRepository.unlike(value.currentUserID, value.post);
          } else {
            _postRepository.like(value.currentUserID, value.post);
          }

          _likeStreamSubscription = _postRepository
              .watchLikes(value.post)
              .listen((likes) => add(
                  PostActorEvent.likesReceived(likes, value.currentUserID)));
        },
        toggleRepostPost: (_Reposted value) async* {
          _repostStreamSubscription?.cancel();

          if (state.isReposted) {
            _postRepository.unrepost(value.currentUserID, value.post);
          } else {
            _postRepository.repost(value.currentUserID, value.post);
          }

          _repostStreamSubscription = _postRepository
              .watchReposts(value.post)
              .listen((reposts) => add(PostActorEvent.repostsReceived(
                  reposts, value.currentUserID)));
        },
        toggleBookmarkPost: (_Bookmarked value) async* {
          _bookmarkStreamSubscription?.cancel();

          if (state.isBookmarked) {
            _postRepository.unbookmark(value.currentUserID, value.post);
          } else {
            _postRepository.bookmark(value.currentUserID, value.post);
          }

          _bookmarkStreamSubscription = _postRepository
              .watchBookmarks(value.post)
              .listen((bookmarkedPosts) => add(PostActorEvent.bookmarksReceived(
                  bookmarkedPosts, value.currentUserID)));
        },
        likesReceived: (_LikesReceived value) async* {
          yield value.likesOrFailure.fold(
              (f) => state,
              (likes) => state.copyWith(
                  likes: likes, isLiked: likes.contains(value.currentUserID)));
        },
        repostsReceived: (_RepostsReceived value) async* {
          yield value.repostsOrFailure.fold(
              (f) => state,
              (reposts) => state.copyWith(
                  reposts: reposts,
                  isReposted: reposts.contains(value.currentUserID)));
        },
        commentsReceived: (_CommentsReceived value) async* {
          yield value.commentsOrFailure.fold(
              (f) => state, (comments) => state.copyWith(comments: comments));
        },
        bookmarksReceived: (_BookmarksReceived value) async* {
          yield value.bookmarksOrFailure.fold(
              (f) => state,
              (bookmarks) => state.copyWith(
                  bookmarkedPosts: bookmarks,
                  isBookmarked: bookmarks.contains(value.currentUserID)));
        },
        delete: (_Delete value) async* {
          await _postRepository.delete(value.post);
          yield state;
        },
        commentBodyChanged: (e) async* {
          yield state.copyWith(
              comment: state.comment
                  .copyWith(commentBody: CommentBody(e.commnentBody)));
        },
        submitComment: (e) async* {
          yield state.copyWith(
            comment: state.comment.copyWith(
              senderID: SenderID(e.currentUserID),
            ),
          );
          await _postRepository.createComment(e.post, state.comment);
        },
        setCurrentScreen: (e) async* {
          await _analyticsService.setCurrentScreen(screenName);
        },
        getPost: (e) async* {
          var post = await _postRepository.getPost(
              postID: e.postID, typeID: e.typeID, type: e.type);
          add(PostActorEvent.getData(
            post,
            senderID: post.senderID.getOrCrash(),
            currentUserID: e.currentUserID,
            orgID: post.orgID.getOrCrash(),
          ));
          yield state.copyWith(post: post);
        });
  }

  @override
  Future<void> close() async {
    await _likeStreamSubscription.cancel();
    await _repostStreamSubscription.cancel();
    await _commentStreamSubscription.cancel();
    await _bookmarkStreamSubscription.cancel();
    return super.close();
  }
}
