import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/i_post_repository.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';

part 'post_watcher_event.dart';
part 'post_watcher_state.dart';

part 'post_watcher_bloc.freezed.dart';

@injectable
class PostWatcherBloc extends Bloc<PostWatcherEvent, PostWatcherState> {
  final IPostRepository _postRepository;

  PostWatcherBloc(this._postRepository) : super(PostWatcherState.initial());

  StreamSubscription<Either<PostFailure, KtList<Post>>> _postStreamSubscription;

  @override
  Stream<PostWatcherState> mapEventToState(
    PostWatcherEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      yield const PostWatcherState.loadInProgress();
      await _postStreamSubscription?.cancel();
      _postStreamSubscription = _postRepository
          .watchAll(e.postCollectionID, e.isOrg)
          .listen((posts) => add(PostWatcherEvent.postsReceived(posts)));
    }, postsReceived: (e) async* {
      yield e.failureOrPosts.fold(
        (f) => PostWatcherState.loadFailure(f),
        (posts) => PostWatcherState.loadSuccess(posts),
      );
    });
  }

  @override
  Future<void> close() async {
    await _postStreamSubscription.cancel();
    return super.close();
  }
}
