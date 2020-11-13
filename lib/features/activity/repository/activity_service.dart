import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity_failure.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_activity_service.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/services/event_dtos.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/infrastructure/posts/post_dtos.dart';

import 'activity_dtos.dart';

@LazySingleton(as: IActivityService)
class ActivityService implements IActivityService {
  final FirebaseFirestore _firestore;

  ActivityService(this._firestore);

  @override
  Stream<Either<ActivityFailure, KtList<Activity>>> watchAll() async* {
    final currentUserID = await _firestore.currentUserID();
    yield* activitiesRef
        .doc(currentUserID)
        .collection('userActivityFeed')
        .orderBy('timeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ActivityFailure, KtList<Activity>>(
            snapshot.docs
                .map((doc) => ActivityDTO.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ActivityFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ActivityFailure.unexpected());
      }
    });
  }

  @override
  Future<Event> getEvent(Activity activity) async {
    DocumentSnapshot eventDoc;
    final currentUserID = await _firestore.currentUserID();
    eventDoc = activity.isOrg
        ? await eventsRef
            .doc(activity.orgID)
            .collection('orgEvents')
            .doc(activity.eventID)
            .get()
        : await eventsRef
            .doc(currentUserID)
            .collection('userEvents')
            .doc(activity.eventID)
            .get();

    return EventDto.fromFirestore(eventDoc).toDomain();
  }

  @override
  Future<Post> getPost(Activity activity) async {
    DocumentSnapshot postDoc;
    final currentUserID = await _firestore.currentUserID();
    postDoc = activity.isOrg
        ? await postsRef
            .doc(activity.orgID)
            .collection('orgPosts')
            .doc(activity.postID)
            .get()
        : await postsRef
            .doc(currentUserID)
            .collection('userPosts')
            .doc(activity.postID)
            .get();

    return PostDTO.fromFirestore(postDoc).toDomain();
  }
}
