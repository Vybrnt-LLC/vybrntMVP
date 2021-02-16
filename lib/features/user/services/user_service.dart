import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_activity_service.dart';
import 'package:vybrnt_mvp/features/activity/repository/activity_dtos.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/calendar/services/event_dtos.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/emember.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/services/org_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vybrnt_mvp/features/organization/services/org_list_dtos.dart';
import 'package:vybrnt_mvp/features/user/domain/i_user_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';
import 'package:vybrnt_mvp/features/user/services/user_dtos.dart';
import 'package:vybrnt_mvp/features/user/services/user_list_dtos.dart';

@LazySingleton(as: IUserService)
class UserService implements IUserService {
  final FirebaseFirestore firestore;
  final IActivityService _activityService;

  UserService(this.firestore, this._activityService);

  @override
  Future<OrgList> getOrgList(String orgID) async {
    final orgDoc = await organizationsRef.doc(orgID).get();
    return OrgListDto.fromFirestore(orgDoc).toDomain();
  }

  @override
  Future<Organization> getOrgProfile(String orgID) async {
    final orgDoc = await organizationsRef.doc(orgID).get();
    return OrgDto.fromFirestore(orgDoc).toDomain();
  }

  @override
  Future<UserList> getUserList(String userID) async {
    final userDoc = await usersRef.doc(userID).get();
    return UserListDto.fromFirestore(userDoc).toDomain();
  }

  @override
  Future<User> getUserWithColor(String userID) async {
    final userDoc = await usersRef.doc(userID).get();
    return UserDto.fromFirestore(userDoc).toDomain();
  }

  @override
  Stream<User> getUserStream(String userID) async* {
    yield* usersRef
        .doc(userID)
        .snapshots()
        .map((userDoc) => UserDto.fromFirestore(userDoc).toDomain());
  }

  @override
  Stream<KtList<String>> followers(String userID) async* {
    yield* followersRef
        .doc(userID)
        .collection('userFollowers')
        .snapshots()
        .map((event) => event.docs.map((e) => e.id).toImmutableList());
  }

  @override
  Stream<KtList<String>> following(String userID) async* {
    yield* followingRef
        .doc(userID)
        .collection('userFollowing')
        .snapshots()
        .map((event) => event.docs.map((e) => e.id).toImmutableList());
  }

  @override
  Stream<KtList<String>> followedOrgs(String userID) async* {
    yield* followingRef
        .doc(userID)
        .collection('orgFollowing')
        .snapshots()
        .map((event) => event.docs.map((e) => e.id).toImmutableList());
  }

  Stream<KtList<String>> getUserPhotos(String userID) async* {
    yield* photosRef
        .doc(userID)
        .collection('usersPhotos')
        .snapshots()
        .map((event) => event.docs.map((e) => e.id).toImmutableList());
  }

  @override
  Future followUser(String userID) async {
    final currentUserID = await firestore.currentUserID();

    // Add user to current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('userFollowing')
        .doc(userID)
        .set({'notify': false});
    // Add current user to user's followers collection
    followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .set({'notify': false});

    await _activityService.addFollowUserToActivityFeed(userID);
  }

  @override
  Future unfollowUser(String userID) async {
    final currentUserID = await firestore.currentUserID();
    // Remove organization from current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('userFollowing')
        .doc(userID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
    // Remove current user from organization's followers collection
    followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });

    //await removeFollowFromActivityFeed(userID);
  }

  @override
  Future<bool> isFollowing(String userID) async {
    final currentUserID = await firestore.currentUserID();
    bool result;
    await followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .get()
        .then((value) => result = value.exists)
        .catchError((onError) => result = false);

    return result;
    // if (followingDoc == null) {
    //   return false;
    // } else {
    //   return true;
    // }
  }

  @override
  Future addUserToNotify(String userID) async {
    final currentUserID = await firestore.currentUserID();

    // Add user to current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('userFollowing')
        .doc(userID)
        .set({'notify': true}, SetOptions(merge: true));
    // Add current user to user's followers collection
    followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .set({
      'notify': true,
    }, SetOptions(merge: true));
  }

  @override
  Future removeUserFromNotify(String userID) async {
    final currentUserID = await firestore.currentUserID();
    // Remove organization from current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('userFollowing')
        .doc(userID)
        .update({'notify': false});

    // Remove current user from organization's followers collection
    followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .update({'notify': false});
  }

  @override
  Future<bool> isNotified(String userID) async {
    final currentUserID = await firestore.currentUserID();
    if (currentUserID == userID) {
      return false;
    }
    DocumentSnapshot followingDoc = await followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .get();

    bool result;
    if (!followingDoc.exists) {
      return false;
    }
    try {
      result = followingDoc.get('notify');
    } catch (e) {
      return false;
    }

    return result;
  }

  @override
  Stream<Either<EventFailure, KtList<Event>>> watchUserEvents(
      String userID) async* {
    yield* eventsRef
        .doc(userID)
        .collection('userEvents')
        .orderBy('startTime', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<EventFailure, KtList<Event>>(
            snapshot.docs
                .map((doc) => EventDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    });
  }

  @override
  Future<KtList<UserList>> getUserKtList(KtList<String> userIDList) async {
    KtMutableList<UserList> users = KtMutableList.empty();

    for (int i = 0; i < userIDList.size; i++) {
      UserList user = await getUserList(userIDList[i]);
      users.add(user);
    }
    return users;
  }

  @override
  Future<KtList<User>> getUserWithColorsKtListFromEMember(
      KtList<EMember> eMemberList) async {
    KtMutableList<User> users = KtMutableList.empty();

    for (int i = 0; i < eMemberList.size; i++) {
      User user = await getUserWithColor(eMemberList[i].userID.getOrCrash());
      users.add(user);
    }
    return users;
  }

  @override
  Future<KtList<OrgList>> getOrgKtList(KtList<String> orgIDList) async {
    KtMutableList<OrgList> orgs = KtMutableList.empty();

    for (int i = 0; i < orgIDList.size; i++) {
      final org = await getOrgList(orgIDList[i]);
      orgs.add(org);
    }
    return orgs;
  }

  @override
  Future updateUser(User user) async {
    final userDto = UserDto.fromDomain(user);
    usersRef.doc(user.userID.getOrCrash()).update(userDto.toJson());
  }

  Future<String> uploadUserProfileImage(String url, File imageFile) async {
    String photoId = Uuid().v4();
    File image = await compressImage(photoId, imageFile);

    if (url.isNotEmpty) {
      // Updating user Profile image
      RegExp exp = RegExp(r'userProfile_(.*).jpg');
      photoId = exp.firstMatch(url)[1];
    }

    StorageUploadTask uploadTask = storageRef
        .child('images/users/userProfile_$photoId.jpg')
        .putFile(image);
    StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
    String downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> uploadUserBannerImage(String url, File imageFile) async {
    String photoId = Uuid().v4();
    File image = await compressImage(photoId, imageFile);

    if (url.isNotEmpty) {
      // Updating user Profile image
      RegExp exp = RegExp(r'userBanner_(.*).jpg');
      photoId = exp.firstMatch(url)[1];
    }

    StorageUploadTask uploadTask =
        storageRef.child('images/users/userBanner_$photoId.jpg').putFile(image);
    StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
    String downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<File> compressImage(String photoId, File image) async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    File compressedImageFile = await FlutterImageCompress.compressAndGetFile(
        image.absolute.path, '$path/img_$photoId.jpg',
        quality: 70);
    return compressedImageFile;
  }

  // Future removeFollowFromActivityFeed(String userID) async {
  //   activitiesRef
  //       .doc(userID)
  //       .collection('userActivityFeed')
  //       .doc(userID)
  //       .get()
  //       .then((value) {
  //     if (value.exists) {
  //       value.reference.delete();
  //     }
  //   });
  // }

  @override
  Future<bool> isBlocked(String userID) async {
    final currentUserID = await firestore.currentUserID();
    bool result;
    await blockedRef
        .doc(currentUserID)
        .collection('cannotAccess')
        .doc(userID)
        .get()
        .then((value) => result = value.exists)
        .catchError((onError) => result = false);

    return result;
  }

  @override
  Future<bool> isBlocking(String userID) async {
    final currentUserID = await firestore.currentUserID();
    bool result;
    await blockedRef
        .doc(userID)
        .collection('cannotAccess')
        .doc(currentUserID)
        .get()
        .then((value) => result = value.exists)
        .catchError((onError) => result = false);

    return result;
  }

  @override
  Future blockUser(String userID) async {
    final currentUserID = await firestore.currentUserID();
    blockedRef
        .doc(userID)
        .collection('cannotAccess')
        .doc(currentUserID)
        .set({});
    await unfollowUser(userID);
  }

  @override
  Future unblockUser(String userID) async {
    final currentUserID = await firestore.currentUserID();
    blockedRef
        .doc(userID)
        .collection('cannotAccess')
        .doc(currentUserID)
        .get()
        .then((value) {
      if (value.exists) {
        value.reference.delete();
      }
    });
  }
}
