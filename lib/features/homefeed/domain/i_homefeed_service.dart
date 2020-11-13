import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';

abstract class IHomeFeedService {
  Stream<Either<EventFailure, KtList<Event>>> watchUpcomingEvents();
  Stream<Either<PostFailure, KtList<Post>>> watchPostFeed();
  Stream<Either<EventFailure, KtList<Event>>> watchCategoriesUpcomingEvents(
      String documentName);
  Stream<Either<PostFailure, KtList<Post>>> watchCategoriesPostFeed(
      String documentName);
}
