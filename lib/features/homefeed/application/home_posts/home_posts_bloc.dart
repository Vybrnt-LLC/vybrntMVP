import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/i_homefeed_service.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';

part 'home_posts_event.dart';
part 'home_posts_state.dart';

part 'home_posts_bloc.freezed.dart';

@injectable
class HomePostsBloc extends Bloc<HomePostsEvent, HomePostsState> {
  final IHomeFeedService _homeFeedService;

  HomePostsBloc(this._homeFeedService) : super(HomePostsState.initial());

  StreamSubscription<Either<PostFailure, KtList<Post>>> _postStreamSubscription;

  @override
  Stream<HomePostsState> mapEventToState(
    HomePostsEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const HomePostsState.loadInProgress();
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _homeFeedService
            .watchPostFeed()
            .listen((post) => add(HomePostsEvent.postsReceived(post)));
      },
      postsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => HomePostsState.loadFailure(f),
          (posts) => HomePostsState.loadSuccess(posts),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _postStreamSubscription.cancel();
    return super.close();
  }
}
