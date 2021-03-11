import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../../core/auth/firestore_helpers.dart';
import '../../../core/shared/constants.dart';
import '../../calendar/domain/models/event.dart';
import '../../posts/domain/posts/comment.dart';
import '../../posts/domain/posts/post.dart';
import '../domain/activity.dart';
import '../domain/activity_failure.dart';
import '../domain/i_activity_service.dart';
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
        debugPrint(e.message.toString());
        return left(const ActivityFailure.unexpected());
      }
    });
  }

  @override
  Future addLikeToActivityFeed(Post post) async {
    final currentUserID = await _firestore.currentUserID();

    final isNotPostOwner = currentUserID != post.senderID.getOrCrash();

    if (isNotPostOwner) {
      final currentUserDoc = await usersRef.doc(currentUserID).get();
      final name = await currentUserDoc.get('profileName');
      final finalName = name == '' ? 'An Anonymous User' : name.toString();
      final ownerType = _getOwnerType(post);
      final ownerID = _getOwnerID(post);
      final imageURL = currentUserDoc.get('profileImageUrl').toString();

      // ignore: prefer_final_locals
      Activity newActivity = Activity.empty();
      final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.like,
        objectID: post.postID.getOrCrash(),
        ownerType: ownerType,
        ownerID: ownerID,
        titleSubject: finalName,
        bodySubject: post.postHeader.getOrCrash(),
        imageURL: imageURL,
        profileID: currentUserID,
        profileType: OwnerType.user,
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

    final bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();

    if (isNotPostOwner) {
      // ignore: prefer_final_locals
      Activity newActivity = Activity.empty();
      final currentUserDoc = await usersRef.doc(currentUserID).get();
      final name = currentUserDoc.get('profileName');
      final finalName = name == '' ? 'An Anonymous User' : name.toString();
      final imageURL = currentUserDoc.get('profileImageUrl').toString();

      final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.repost,
        objectID: newRepostID,
        ownerType: OwnerType.user,
        ownerID: currentUserID,
        titleSubject: finalName,
        bodySubject: post.postHeader.getOrCrash(),
        imageURL: imageURL,
        profileID: currentUserID,
        profileType: OwnerType.user,
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
  Future addCommentToActivityFeed(
      Post post, Comment comment, List<String> ownersOfComments) async {
    final currentUserID = await _firestore.currentUserID();

    final currentUserDoc = await usersRef.doc(currentUserID).get();
    final name = currentUserDoc.get('profileName');
    final finalName = name == '' ? 'An Anonymous User' : name.toString();
    final ownerType = _getOwnerType(post);
    final ownerID = _getOwnerID(post);
    final bodySubject = comment.commentBody.getOrCrash();
    final imageURL = currentUserDoc.get('profileImageUrl').toString();

    // ignore: prefer_final_locals
    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
      activityType: ActivityType.comment,
      objectID: post.postID.getOrCrash(),
      ownerType: ownerType,
      ownerID: ownerID,
      titleSubject: finalName,
      bodySubject: bodySubject,
      imageURL: imageURL,
      profileID: currentUserID,
      profileType: OwnerType.user,
    ));
    final bool isNotPostOwner = currentUserID != post.senderID.getOrCrash();
    if (isNotPostOwner) {
      _sendActivityDTO(activityDTO, newActivity, post);
    }

    for (int i = 0; i < ownersOfComments.length; i++) {
      if (ownersOfComments[i] != currentUserID &&
          ownersOfComments[i] != post.senderID.getOrCrash()) {
        activitiesRef
            .doc(ownersOfComments[i])
            .collection('userActivityFeed')
            .doc(newActivity.activityID.getOrCrash())
            .set(activityDTO.toJson());
      }
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
    OwnerType profileType;

    final ownerType = _getOwnerType(post);
    final ownerID = _getOwnerID(post);

    if (post.orgID.getOrCrash().isNotEmpty) {
      doc = await organizationsRef.doc(post.orgID.getOrCrash()).get();
      name = doc.get('name').toString();
      profileType = OwnerType.org;
    } else {
      doc = await usersRef.doc(post.senderID.getOrCrash()).get();
      name = doc.get('profileName').toString();
      name = name.isEmpty ? 'An Anonymous User' : name;
      profileType = OwnerType.user;
    }

    final imageURL = doc.get('profileImageUrl').toString();
    // ignore: prefer_final_locals
    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
      activityType: ActivityType.post,
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

    final ownerType = event.isOrg ? OwnerType.org : OwnerType.user;
    final ownerID = event.isOrg ? event.orgID : event.senderID;
    final profileType = event.isOrg ? OwnerType.org : OwnerType.user;

    if (event.isOrg) {
      doc = await organizationsRef.doc(event.orgID).get();
      name = doc.get('name').toString();
    } else {
      doc = await usersRef.doc(event.senderID).get();
      name = doc.get('profileName').toString();
      name = name.isEmpty ? 'An Anonymous User' : name;
    }
    final imageURL = doc.get('profileImageUrl').toString();
    // ignore: prefer_final_locals
    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.event,
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
    String name = currentUserDoc.get('profileName').toString();
    name = name.isEmpty ? 'An Anonymous User' : name;
    final imageURL = currentUserDoc.get('profileImageUrl').toString();

    // ignore: prefer_final_locals
    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
        activityType: ActivityType.follow,
        objectID: currentUserID,
        ownerType: OwnerType.user,
        ownerID: currentUserID,
        titleSubject: name,
        bodySubject: name,
        imageURL: imageURL,
        profileID: currentUserID,
        profileType: OwnerType.user));

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
    String name = currentUserDoc.get('profileName').toString();
    name = name.isEmpty ? 'An Anonymous User' : name;
    final orgName = orgDoc.get('name').toString();
    final imageURL = currentUserDoc.get('profileImageUrl').toString();

    // ignore: prefer_final_locals
    Activity newActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newActivity.copyWith(
      activityType: ActivityType.follow,
      objectID: currentUserID,
      ownerType: OwnerType.org,
      ownerID: orgID,
      titleSubject: orgName,
      bodySubject: name,
      imageURL: imageURL,
      profileID: currentUserID,
      profileType: OwnerType.user,
    ));
    _notifyEboard(
        orgID: orgID,
        activityID: newActivity.activityID.getOrCrash(),
        activityDTO: activityDTO,
        repostID: '',
        senderID: '');
  }

  @override
  Future addAdminAccessToActivityFeed(String userID, String orgID) async {
    final currentUserID = await _firestore.currentUserID();
    final currentUserDoc = await usersRef.doc(currentUserID).get();
    final orgDoc = await organizationsRef.doc(orgID).get();
    String name = currentUserDoc.get('profileName').toString();
    name = name.isEmpty ? 'An Anonymous User' : name;
    final orgName = orgDoc.get('name').toString();
    final imageURL = orgDoc.get('profileImageUrl').toString();

    // ignore: prefer_final_locals
    Activity newLikeActivity = Activity.empty();
    final activityDTO = ActivityDTO.fromDomain(newLikeActivity.copyWith(
      activityType: ActivityType.admin,
      objectID: orgID,
      ownerType: OwnerType.org,
      ownerID: orgID,
      titleSubject: orgName,
      bodySubject: name,
      imageURL: imageURL,
      profileID: orgID,
      profileType: OwnerType.org,
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

  if (post.orgID.getOrCrash().isNotEmpty) {
    _notifyEboard(
        orgID: post.orgID.getOrCrash(),
        activityDTO: activityDTO,
        activityID: newActivity.activityID.getOrCrash(),
        senderID: post.senderID.getOrCrash(),
        repostID: post.repostID.getOrCrash());
  }
}

Future _notifyFollowers(String activityID, ActivityDTO activityDTO,
    OwnerType ownerType, String ownerID) async {
  final followerIDs = await followersRef
      .doc(ownerID)
      .collection('${OwnerTypeHelper.stringOf(ownerType)}Followers')
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
  final String ownerID = post.repostID.getOrCrash().isNotEmpty
      ? post.repostID.getOrCrash()
      : post.orgID.getOrCrash().isNotEmpty
          ? post.orgID.getOrCrash()
          : post.senderID.getOrCrash();
  return ownerID;
}

OwnerType _getOwnerType(Post post) {
  final OwnerType ownerType = post.repostID.getOrCrash().isNotEmpty
      ? OwnerType.user
      : post.orgID.getOrCrash().isEmpty
          ? OwnerType.user
          : OwnerType.org;
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
