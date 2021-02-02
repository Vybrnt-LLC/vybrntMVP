import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:truncate/truncate.dart';
import '../../../core/auth/firestore_helpers.dart';
import '../../../core/shared/constants.dart';
import '../domain/activity.dart';
import '../domain/activity_failure.dart';
import '../domain/i_activity_service.dart';
import 'package:rxdart/rxdart.dart';
import '../../calendar/domain/models/event.dart';
import '../../calendar/services/event_dtos.dart';
import '../../posts/domain/posts/comment.dart';
import '../../posts/domain/posts/post.dart';
import '../../posts/infrastructure/posts/post_dtos.dart';

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
  Future addLikeToActivityFeed(Post post) async {
    final currentUserID = await _firestore.currentUserID();

    bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();

    if (isNotPostOwner) {
      final currentUserDoc = await usersRef.doc(currentUserID).get();
      String name = await currentUserDoc.get('profileName');
      name = name.isEmpty ? 'An Anonymous User' : name;
      final ownerType = _getOwnerType(post);
      final ownerID = _getOwnerID(post);

      Activity newActivity = Activity.empty();
      final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.LIKE,
        objectID: post.postID.getOrCrash(),
        ownerType: ownerType,
        ownerID: ownerID,
        titleSubject: name,
        bodySubject: post.postHeader.getOrCrash(),
        imageURL: currentUserDoc.get('profileImageUrl'),
        profileID: currentUserID,
        profileType: OwnerType.USER,
      ));

      _sendActivityDTO(activityDTO, newActivity, post);
    }
  }

  // @override
  // Future removeLikeFromActivityFeed(Post post) async {
  //   final currentUserID = await _firestore.currentUserID();
  //   bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();
  //   if (isNotPostOwner) {
  //     activitiesRef
  //         .doc(post.senderID.getOrCrash())
  //         .collection('userActivityFeed')
  //         .doc(post.postID.getOrCrash())
  //         .get()
  //         .then((value) {
  //       if (value.exists) {
  //         value.reference.delete();
  //       }
  //     });
  //   }
  // }

  @override
  Future addRepostToActivityFeed(Post post, String newRepostID) async {
    final currentUserID = await _firestore.currentUserID();

    bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();

    if (isNotPostOwner) {
      Activity newActivity = Activity.empty();
      final currentUserDoc = await usersRef.doc(currentUserID).get();
      String name = await currentUserDoc.get('profileName');
      name = name.isEmpty ? 'An Anonymous User' : name;

      final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.REPOST,
        objectID: newRepostID,
        ownerType: OwnerType.USER,
        ownerID: currentUserID,
        titleSubject: name,
        bodySubject: post.postHeader.getOrCrash(),
        imageURL: currentUserDoc.get('profileImageUrl'),
        profileID: currentUserID,
        profileType: OwnerType.USER,
      ));

      _sendActivityDTO(activityDTO, newActivity, post);
    }
  }

  // @override
  // Future removeRepostFromActivityFeed(Post post, String repostID) async {
  //   final currentUserID = await _firestore.currentUserID();
  //   bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();
  //   if (isNotPostOwner) {
  //     activitiesRef
  //         .doc(post.senderID.getOrCrash())
  //         .collection('userActivityFeed')
  //         .doc(repostID)
  //         .get()
  //         .then((value) {
  //       if (value.exists) {
  //         value.reference.delete();
  //       }
  //     });
  //   }
  // }

  @override
  Future addCommentToActivityFeed(Post post, Comment comment) async {
    final currentUserID = await _firestore.currentUserID();
    bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();

    if (isNotPostOwner) {
      final currentUserDoc = await usersRef.doc(currentUserID).get();
      String name = await currentUserDoc.get('profileName');
      name = name.isEmpty ? 'An Anonymous User' : name;
      final ownerType = _getOwnerType(post);
      final ownerID = _getOwnerID(post);
      final bodySubject = comment.commentBody.getOrCrash();

      Activity newActivity = Activity.empty();
      final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.COMMENT,
        objectID: post.postID.getOrCrash(),
        ownerType: ownerType,
        ownerID: ownerID,
        titleSubject: name,
        bodySubject: bodySubject,
        imageURL: currentUserDoc.get('profileImageUrl'),
        profileID: currentUserID,
        profileType: OwnerType.USER,
      ));

      _sendActivityDTO(activityDTO, newActivity, post);
    }
  }

  // @override
  // Future removeCommentFromActivityFeed(Post post, Comment comment) async {
  //   final currentUserID = await _firestore.currentUserID();
  //   bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();
  //   if (isNotPostOwner) {
  //     activitiesRef
  //         .doc(post.senderID.getOrCrash())
  //         .collection('userActivityFeed')
  //         .doc(comment.commentID.getOrCrash())
  //         .get()
  //         .then((value) {
  //       if (value.exists) {
  //         value.reference.delete();
  //       }
  //     });
  //   }
  // }

  @override
  Future addPostToActivityFeed(Post post) async {
    DocumentSnapshot doc;
    String name;
    dynamic profileType;

    final ownerType = _getOwnerType(post);
    final ownerID = _getOwnerID(post);

    if (post.orgID.getOrCrash().isNotEmpty) {
      doc = await organizationsRef.doc(post.orgID.getOrCrash()).get();
      name = doc.get('name');
      profileType = OwnerType.ORG;
    } else {
      doc = await usersRef.doc(post.senderID.getOrCrash()).get();
      name = doc.get('profileName');
      name = name.isEmpty ? 'An Anonymous User' : name;
      profileType = OwnerType.USER;
    }

    final imageURL = doc.get('profileImageUrl');
    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
      activityType: ActivityType.POST,
      objectID: post.postID.getOrCrash(),
      ownerType: ownerType,
      ownerID: ownerID,
      titleSubject: name,
      bodySubject: post.postHeader.getOrCrash(),
      imageURL: imageURL,
      profileID: ownerID,
      profileType: profileType,
    ));

    _notifyFollowers(
        newActivity.activityID.getOrCrash(), activityDTO, ownerType, ownerID);
  }

  //Would have to add an post type enum, a default value for when one is loaded in, and an eventID field in post.

  @override
  Future addEventToActivityFeed(Event event) async {
    // final currentUserID = await _firestore.currentUserID();

    //bool isNotEventOwner = currentUserID != event.senderID;
    DocumentSnapshot doc;
    String name;

    final ownerType = event.isOrg ? OwnerType.ORG : OwnerType.USER;
    final ownerID = event.isOrg ? event.orgID : event.senderID;
    final profileType = event.isOrg ? OwnerType.ORG : OwnerType.USER;

    if (event.isOrg) {
      doc = await organizationsRef.doc(event.orgID).get();
      name = doc.get('name');
    } else {
      doc = await usersRef.doc(event.senderID).get();
      name = doc.get('profileName');
      name = name.isEmpty ? 'An Anonymous User' : name;
    }
    final imageURL = doc.get('profileImageUrl');
    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.EVENT,
        objectID: event.eventID.getOrCrash(),
        ownerType: ownerType,
        ownerID: ownerID,
        titleSubject: name,
        bodySubject: event.eventName,
        imageURL: imageURL,
        profileID: ownerID,
        profileType: profileType));

    _notifyFollowers(
        newActivity.activityID.getOrCrash(), activityDTO, ownerType, ownerID);
  }

  @override
  Future addFollowUserToActivityFeed(String userID) async {
    final currentUserID = await _firestore.currentUserID();
    final currentUserDoc = await usersRef.doc(currentUserID).get();
    String name = currentUserDoc.get('profileName');
    name = name.isEmpty ? 'An Anonymous User' : name;

    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.FOLLOW,
        objectID: currentUserID,
        ownerType: OwnerType.USER,
        ownerID: currentUserID,
        titleSubject: name,
        bodySubject: name,
        imageURL: currentUserDoc.get('profileImageUrl'),
        profileID: currentUserID,
        profileType: OwnerType.USER));

    activitiesRef
        .doc(userID)
        .collection('userActivityFeed')
        .doc(newActivity.activityID.getOrCrash())
        .set(activityDTO.toJson());
  }

  @override
  Future addFollowOrgToActivityFeed(String orgID) async {
    final currentUserID = await _firestore.currentUserID();
    final currentUserDoc = await usersRef.doc(currentUserID).get();
    final orgDoc = await organizationsRef.doc(orgID).get();
    String name = currentUserDoc.get('profileName');
    name = name.isEmpty ? 'An Anonymous User' : name;
    final orgName = orgDoc.get('name');

    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
      activityType: ActivityType.FOLLOW,
      objectID: currentUserID,
      ownerType: OwnerType.ORG,
      ownerID: orgID,
      titleSubject: orgName,
      bodySubject: name,
      imageURL: currentUserDoc.get('profileImageUrl'),
      profileID: currentUserID,
      profileType: OwnerType.USER,
    ));
    _notifyEboard(
        orgID: orgID,
        activityID: newActivity.activityID.getOrCrash(),
        activityDTO: activityDTO,
        repostID: '',
        senderID: '');
  }

  Future addAdminAccessToActivityFeed(String userID, String orgID) async {
    final currentUserID = await _firestore.currentUserID();
    final currentUserDoc = await usersRef.doc(currentUserID).get();
    final orgDoc = await organizationsRef.doc(orgID).get();
    String name = currentUserDoc.get('profileName');
    name = name.isEmpty ? 'An Anonymous User' : name;
    final orgName = orgDoc.get('name');

    Activity newLikeActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newLikeActivity.copyWith(
      activityType: ActivityType.ADMIN,
      objectID: orgID,
      ownerType: OwnerType.ORG,
      ownerID: orgID,
      titleSubject: orgName,
      bodySubject: name,
      imageURL: orgDoc.get('profileImageUrl'),
      profileID: orgID,
      profileType: OwnerType.ORG,
    ));

    activitiesRef
        .doc(userID)
        .collection('userActivityFeed')
        .doc(activityDTO.activityID)
        .set(activityDTO.toJson());
  }
}

Future _sendActivityDTO(
    ActivityDTO activityDTO, Activity newActivity, Post post) async {
  activitiesRef
      .doc(post.senderID.getOrCrash())
      .collection('userActivityFeed')
      .doc(newActivity.activityID.getOrCrash())
      .set(activityDTO.toJson());
  if (post.repostID.getOrCrash().isNotEmpty) {
    activitiesRef
        .doc(post.repostID.getOrCrash())
        .collection('userActivityFeed')
        .doc(newActivity.activityID.getOrCrash())
        .set(activityDTO.toJson());
  }

  if (post.orgID.getOrCrash().isNotEmpty)
    _notifyEboard(
        orgID: post.orgID.getOrCrash(),
        activityDTO: activityDTO,
        activityID: newActivity.activityID.getOrCrash(),
        senderID: post.senderID.getOrCrash(),
        repostID: post.repostID.getOrCrash());
}

Future _notifyFollowers(String activityID, ActivityDTO activityDTO,
    OwnerType ownerType, String ownerID) async {
  final followerIDs = await followersRef
      .doc(ownerID)
      .collection(OwnerTypeHelper.stringOf(ownerType) + 'Followers')
      .where('notify', isEqualTo: true)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.id).toList())
      .first;

  for (int i = 0; i < followerIDs.length; i++) {
    activitiesRef
        .doc(followerIDs[i])
        .collection('userActivityFeed')
        .doc(activityID)
        .set(activityDTO.toJson());
  }
}

Future _notifyEboard(
    {String orgID,
    ActivityDTO activityDTO,
    String activityID,
    String senderID,
    String repostID}) async {
  final eboard = await eboardRef
      .doc(orgID)
      .collection('eMembers')
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.id).toList())
      .first;
  for (int i = 0; i < eboard.length; i++) {
    if (eboard[i] != senderID || eboard[i] != repostID) {
      activitiesRef
          .doc(eboard[i])
          .collection('userActivityFeed')
          .doc(activityID)
          .set(activityDTO.toJson());
    }
  }
}

String _getOwnerID(Post post) {
  String ownerID = post.repostID.getOrCrash().isNotEmpty
      ? post.repostID.getOrCrash()
      : post.orgID.getOrCrash().isNotEmpty
          ? post.orgID.getOrCrash()
          : post.senderID.getOrCrash();
  return ownerID;
}

OwnerType _getOwnerType(Post post) {
  OwnerType ownerType = post.repostID.getOrCrash().isNotEmpty
      ? OwnerType.USER
      : post.orgID.getOrCrash().isEmpty
          ? OwnerType.USER
          : OwnerType.ORG;
  return ownerType;
}

// String truncateHeader(String header) {
//   final newHeader = truncate(header, 75, omission: '...');
//   return newHeader;
// }

// Future<String> _truncateBody(String body) async {
//   final newBody = truncate(body, 150, omission: '...');
//   return newBody;
// }
