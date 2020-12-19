import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/i_homefeed_service.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';

part 'category_posts_event.dart';
part 'category_posts_state.dart';

part 'category_posts_bloc.freezed.dart';

@injectable
class CategoryPostsBloc extends Bloc<CategoryPostsEvent, CategoryPostsState> {
  final IHomeFeedService _homeFeedService;
  final IAnalyticsService _analyticsService;

  CategoryPostsBloc(this._homeFeedService, this._analyticsService)
      : super(CategoryPostsState.initial());

  StreamSubscription<Either<PostFailure, KtList<Post>>> _postStreamSubscription;

  @override
  Stream<CategoryPostsState> mapEventToState(
    CategoryPostsEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const CategoryPostsState.loadInProgress();
        await _analyticsService.setCurrentScreen(e.documentName);
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _homeFeedService
            .watchCategoriesPostFeed(e.documentName)
            .listen((event) => add(CategoryPostsEvent.postsReceived(event)));
      },
      postsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => CategoryPostsState.loadFailure(f),
          (events) => CategoryPostsState.loadSuccess(events),
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
