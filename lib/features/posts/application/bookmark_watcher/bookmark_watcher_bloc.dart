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

part 'bookmark_watcher_event.dart';
part 'bookmark_watcher_state.dart';

part 'bookmark_watcher_bloc.freezed.dart';

@injectable
class BookmarkWatcherBloc
    extends Bloc<BookmarkWatcherEvent, BookmarkWatcherState> {
  final IPostRepository _postRepository;

  BookmarkWatcherBloc(this._postRepository)
      : super(BookmarkWatcherState.initial());

  StreamSubscription<Either<PostFailure, KtList<Post>>> _postStreamSubscription;

  @override
  Stream<BookmarkWatcherState> mapEventToState(
    BookmarkWatcherEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      yield const BookmarkWatcherState.loadInProgress();
      await _postStreamSubscription?.cancel();
      _postStreamSubscription = _postRepository
          .watchPostBookmarks()
          .listen((posts) => add(BookmarkWatcherEvent.postsReceived(posts)));
    }, postsReceived: (e) async* {
      yield e.failureOrPosts.fold(
        (f) => BookmarkWatcherState.loadFailure(f),
        (posts) => BookmarkWatcherState.loadSuccess(posts),
      );
    });
  }

  @override
  Future<void> close() async {
    await _postStreamSubscription.cancel();
    return super.close();
  }
}
