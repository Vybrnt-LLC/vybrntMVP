import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';

import 'activity.dart';
import 'activity_failure.dart';

abstract class IActivityService {
  Stream<Either<ActivityFailure, KtList<Activity>>> watchAll();
  Future<Event> getEvent(Activity activity);
  Future<Post> getPost(Activity activity);
}
