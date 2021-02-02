import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/activity/repository/activity_dtos.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';

import 'activity.dart';
import 'activity_failure.dart';

abstract class IActivityService {
  Stream<Either<ActivityFailure, KtList<Activity>>> watchAll();
  Future addLikeToActivityFeed(Post post);
  //Future removeLikeFromActivityFeed(Post post);
  Future addRepostToActivityFeed(Post post, String newRepostID);
  //Future removeRepostFromActivityFeed(Post post, String repostID);
  Future addCommentToActivityFeed(Post post, Comment comment);
  //Future removeCommentFromActivityFeed(Post post, Comment comment);
  Future addPostToActivityFeed(Post post);
  Future addEventToActivityFeed(Event event);
  Future addFollowUserToActivityFeed(String userID);
  Future addFollowOrgToActivityFeed(String orgID);
  Future addAdminAccessToActivityFeed(String userID, String orgID);
}
