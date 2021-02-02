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
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/emember.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/faq.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/org_failure.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/services/emember_dtos.dart';
import 'package:vybrnt_mvp/features/organization/services/org_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';
import 'package:vybrnt_mvp/features/user/services/user_dtos.dart';
import 'package:vybrnt_mvp/features/user/services/user_list_dtos.dart';

import 'faq_dtos.dart';
import 'org_list_dtos.dart';

@LazySingleton(as: IOrgService)
class OrgService implements IOrgService {
  final FirebaseFirestore firestore;
  final IActivityService _activityService;

  OrgService(this.firestore, this._activityService);

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
  Stream<KtList<OrgList>> searchOrg(String name) async* {
    yield* organizationsRef
        //.where('verified', isEqualTo: false)
        .where('name', isGreaterThanOrEqualTo: name)
        //.where('name', isGreaterThan: '')
        .orderBy('name')
        .snapshots()
        .map(
          (event) => event.docs
              .map((doc) => OrgListDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
        );
  }

  @override
  Stream<KtList<OrgList>> searchVerifiedOrg(String name) async* {
    yield* organizationsRef
        .where('verified', isEqualTo: true)
        .where('name', isGreaterThanOrEqualTo: name)
        //.where('name', isGreaterThan: '')
        .orderBy('name')
        .snapshots()
        .map(
          (event) => event.docs
              .map((doc) => OrgListDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
        );
  }

  @override
  Future<int> postCount(String orgID) async {
    final postsSnapshot =
        await postsRef.doc(orgID).collection('orgPosts').get();

    return postsSnapshot.docs.length;
  }

  @override
  Future<int> memberCount(String orgID) async {
    final followersSnapshot =
        await followersRef.doc(orgID).collection('orgFollowers').get();
    return followersSnapshot.docs.length;
  }

  @override
  Future<int> photoCount(String orgID) async {
    final photosSnapshot =
        await photosRef.doc(orgID).collection('orgPhotos').get();

    return photosSnapshot.docs.length;
  }

  @override
  Future<bool> isAdmin(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    List<String> adminIDs = [];
    organizationsRef
        .doc(orgID)
        .collection('roles')
        .snapshots()
        .map((event) => event.docs.map((e) => adminIDs.add(e.id)));

    return adminIDs.contains(currentUserID);
  }

  @override
  Stream<KtList<String>> admins(String orgID) async* {
    yield* organizationsRef
        .doc(orgID)
        .collection('roles')
        .snapshots()
        .map((event) => event.docs.map((e) => e.id).toImmutableList());
  }

  @override
  Stream<Organization> getOrgStream(String orgID) async* {
    yield* organizationsRef
        .doc(orgID)
        .snapshots()
        .map((orgDoc) => OrgDto.fromFirestore(orgDoc).toDomain());
  }

  @override
  Stream<KtList<String>> members(String orgID) async* {
    yield* followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .snapshots()
        .map((event) => event.docs.map((e) => e.id).toImmutableList());
  }

  @override
  Future followOrg(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    final org = await getOrgProfile(orgID);

    // Add user to current user's following collection
    followingRef.doc(currentUserID).collection('orgFollowing').doc(orgID).set({
      'abbv': org.abbv,
      'name': org.name,
      'profileImageUrl': org.profileImageUrl,
      'isToggled': true,
    });
    // Add current user to user's followers collection
    followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .doc(currentUserID)
        .set({'isToggled': true, 'notify': false});

    await _activityService.addFollowOrgToActivityFeed(orgID);
  }

  @override
  Future unfollowOrg(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    // Remove organization from current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('orgFollowing')
        .doc(orgID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
    // Remove current user from organization's followers collection
    followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .doc(currentUserID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
  }

  @override
  Future addUserToNotify(String orgID) async {
    final currentUserID = await firestore.currentUserID();

    // Add user to current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('orgFollowing')
        .doc(orgID)
        .set({'notify': true}, SetOptions(merge: true));
    // Add current user to user's followers collection
    followersRef.doc(orgID).collection('orgFollowers').doc(currentUserID).set({
      'notify': true,
    }, SetOptions(merge: true));
  }

  @override
  Future removeUserFromNotify(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    // Remove organization from current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('orgFollowing')
        .doc(orgID)
        .update({'notify': false});

    // Remove current user from organization's followers collection
    followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .doc(currentUserID)
        .update({'notify': false});
  }

  @override
  Future<bool> isNotified(String orgID) async {
    final currentUserID = await firestore.currentUserID();

    DocumentSnapshot followingDoc = await followersRef
        .doc(orgID)
        .collection('orgFollowers')
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
  Future<bool> isFollowing(String orgID) async {
    final currentUserID = await firestore.currentUserID();

    DocumentSnapshot followingDoc = await followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .doc(currentUserID)
        .get();
    return followingDoc.exists;
  }

  @override
  Stream<Either<EventFailure, KtList<Event>>> watchOrgEvents(
      String orgID, bool isOrg) async* {
    String type = isOrg ? 'org' : 'user';
    yield* eventsRef
        .doc(orgID)
        .collection(type + 'Events')
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
  Future<Either<OrgFailure, Unit>> updateOrganization(Organization org) async {
    final orgDto = OrgDto.fromDomain(org);
    Unit success;

    try {
      organizationsRef.doc(org.orgID.getOrCrash()).update(orgDto.toJson());
      return right(success);
    } catch (e) {
      return left(OrgFailure.unexpected());
    }
  }

  @override
  Future<Either<OrgFailure, Unit>> createOrganization(Organization org) async {
    final orgDto = OrgDto.fromDomain(org);
    Unit success;
    try {
      await organizationsRef.doc(org.orgID.getOrCrash()).set(orgDto.toJson());
      return right(success);
    } catch (e) {
      return left(OrgFailure.unexpected());
    }
  }

  @override
  Stream<KtList<FAQ>> watchFAQ(String orgID) async* {
    yield* faqsRef.doc(orgID).collection('faqs').snapshots().map(
          (snapshot) => snapshot.docs
              .map((doc) => FAQDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
        );
  }

  @override
  Stream<KtList<EMember>> watchEBoard(String orgID) async* {
    yield* eboardRef.doc(orgID).collection('eMembers').snapshots().map(
          (event) => event.docs
              .map((doc) => EMemberDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
        );
  }

  @override
  Stream<KtList<UserList>> searchUser(String name) async* {
    yield* usersRef
        .where('profileName', isGreaterThanOrEqualTo: name)
        .where('profileName', isGreaterThan: '')
        .orderBy('profileName')
        .snapshots()
        .map(
          (event) => event.docs
              .map((doc) => UserListDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
        );
  }

  @override
  Future addEMember(EMember eMember, String orgID) async {
    final eMemberDto = EMemberDto.fromDomain(eMember);

    await eboardRef
        .doc(orgID)
        .collection('eMembers')
        .doc(eMember.userID.getOrCrash())
        .set(eMemberDto.toJson());

    await organizationsRef
        .doc(orgID)
        .collection('roles')
        .doc(eMember.userID.getOrCrash())
        .set({'role': 'admin'});

    await usersRef
        .doc(eMember.userID.getOrCrash())
        .collection('adminAccess')
        .doc(orgID)
        .set({
      'name': '',
      'profileImageUrl': '',
    });

    await followingRef
        .doc(eMember.userID.getOrCrash())
        .collection('orgFollowing')
        .doc(orgID)
        .set({
      'abbv': '',
      'name': '',
      'profileImageUrl': '',
      'isToggled': true,
    });
    // Add current user to user's followers collection
    followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .doc(eMember.userID.getOrCrash())
        .set({
      'isToggled': true,
    });

    await _activityService.addAdminAccessToActivityFeed(
        eMember.userID.getOrCrash(), orgID);
  }

  @override
  Future removeEMember(String userID, String orgID) async {
    await eboardRef
        .doc(orgID)
        .collection('eMembers')
        .doc(userID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });

    await organizationsRef
        .doc(orgID)
        .collection('roles')
        .doc(userID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });

    await usersRef
        .doc(userID)
        .collection('adminAccess')
        .doc(orgID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
  }

  @override
  Future addFAQ(FAQ faq, String orgID) async {
    final faqDto = FAQDto.fromDomain(faq);
    await faqsRef
        .doc(orgID)
        .collection('faqs')
        .doc(faq.faqID.getOrCrash())
        .set(faqDto.toJson());
  }

  @override
  Future removeFAQ(String faqID, orgID) async {
    await faqsRef.doc(orgID).collection('faqs').doc(faqID).get().then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
  }

  Future<String> uploadOrgProfileImage(String url, File imageFile) async {
    String photoId = Uuid().v4();
    File image = await compressImage(photoId, imageFile);

    if (url.isNotEmpty) {
      // Updating user Profile image
      RegExp exp = RegExp(r'orgProfile_(.*).jpg');
      photoId = exp.firstMatch(url)[1];
    }

    StorageUploadTask uploadTask =
        storageRef.child('images/orgs/orgProfile_$photoId.jpg').putFile(image);
    StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
    String downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> uploadOrgBannerImage(String url, File imageFile) async {
    String photoId = Uuid().v4();
    File image = await compressImage(photoId, imageFile);

    if (url.isNotEmpty) {
      // Updating user Profile image
      RegExp exp = RegExp(r'orgBanner_(.*).jpg');
      photoId = exp.firstMatch(url)[1];
    }

    StorageUploadTask uploadTask =
        storageRef.child('images/orgs/orgBanner_$photoId.jpg').putFile(image);
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

  Future<List<String>> getEboard(String orgID) async {
    List<String> eboardIDs = [];
    await eboardRef
        .doc(orgID)
        .collection('eMembers')
        .get()
        .then((value) => value.docs.forEach((element) {
              eboardIDs.add(element.id);
            }));
    return eboardIDs;
  }

  @override
  Future<bool> isBlocked(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    bool result;
    await blockedRef
        .doc(currentUserID)
        .collection('cannotAccess')
        .doc(orgID)
        .get()
        .then((value) => result = value.exists)
        .catchError((onError) => result = false);

    return result;
  }

  @override
  Future<bool> isBlocking(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    bool result;
    await blockedRef
        .doc(orgID)
        .collection('cannotAccess')
        .doc(currentUserID)
        .get()
        .then((value) => result = value.exists)
        .catchError((onError) => result = false);

    return result;
  }

  @override
  Future blockOrg(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    blockedRef.doc(orgID).collection('cannotAccess').doc(currentUserID).set({});
  }

  @override
  Future unblockOrg(String orgID) async {
    final currentUserID = await firestore.currentUserID();
    blockedRef
        .doc(orgID)
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
