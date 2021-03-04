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
import 'package:vybrnt_mvp/features/activity/domain/i_activity_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_calendar_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_calendar.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/calendar/services/event_dtos.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/org_failure.dart';

import 'package:rxdart/rxdart.dart';
import 'package:vybrnt_mvp/features/organization/services/org_list_dtos.dart';

import 'org_calendar_dtos.dart';

@LazySingleton(as: ICalendarService)
class CalendarService implements ICalendarService {
  final FirebaseFirestore _firestore;
  final IActivityService _activityService;

  CalendarService(this._firestore, this._activityService);

  @override
  Future toggleTrue(String currentUserID, String orgID) async {
    // calendarOrgsRef
    //     .doc(currentUserID)
    //     .collection('toggledOrgs')
    //     .doc(orgID)
    //     .set({});

    // orgToUserCalendarRef
    //     .doc(orgID)
    //     .collection('toggledUsers')
    //     .doc(currentUserID)
    //     .set({});

    followingRef
        .doc(currentUserID)
        .collection('orgFollowing')
        .doc(orgID)
        .update({'isToggled': true});
    followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .doc(currentUserID)
        .update({'isToggled': true});
  }

  @override
  Future toggleFalse(String currentUserID, String orgID) async {
    // calendarOrgsRef
    //     .doc(currentUserID)
    //     .collection('toggledOrgs')
    //     .doc(orgID)
    //     .get()
    //     .then((doc) {
    //   if (doc.exists) {
    //     doc.reference.delete();
    //   }
    // });

    // orgToUserCalendarRef
    //     .doc(orgID)
    //     .collection('toggledUsers')
    //     .doc(currentUserID)
    //     .get()
    //     .then((doc) {
    //   if (doc.exists) {
    //     doc.reference.delete();
    //   }
    // });

    followingRef
        .doc(currentUserID)
        .collection('orgFollowing')
        .doc(orgID)
        .update({'isToggled': false});
    followersRef
        .doc(orgID)
        .collection('orgFollowers')
        .doc(currentUserID)
        .update({'isToggled': false});
  }

  @override
  Future<bool> isOrgToggled(String currentUserID, String orgID) async {
    final DocumentSnapshot toggleOrgDoc = await calendarOrgsRef
        .doc(currentUserID)
        .collection('toggleOrgs')
        .doc(orgID)
        .get();
    return toggleOrgDoc.exists;
  }

  @override
  Future<String> uploadEventImage(File imageFile) async {
    final String eventImageId = Uuid().v4();
    final File image = await compressImage(eventImageId, imageFile);
    final StorageUploadTask uploadTask = storageRef
        .child('images/events/event_$eventImageId.jpg')
        .putFile(image);
    final StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
    final downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl.toString();
  }

  @override
  Future<File> compressImage(String eventImageId, File image) async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    final File compressedImageFile =
        await FlutterImageCompress.compressAndGetFile(
            image.absolute.path, '$path/img_$eventImageId.jpg',
            quality: 70);
    return compressedImageFile;
  }

  @override
  Stream<KtList<String>> getAdminIDs(String currentUserID) async* {
    yield* usersRef
        .doc(currentUserID)
        .collection('adminAccess')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => doc.id)
              .toImmutableList()
              .toMutableList(),
        );
  }

  @override
  Stream<Either<EventFailure, KtList<OrgList>>> getAdmins(
      String currentUserID) async* {
    yield* usersRef
        .doc(currentUserID)
        .collection('adminAccess')
        .snapshots()
        .map(
          (snapshot) => right<EventFailure, KtList<OrgList>>(
            snapshot.docs
                .map((doc) => OrgListDto.fromFirestore(doc).toDomain())
                .toImmutableList()
                .toMutableList(),
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
  Stream<Either<EventFailure, KtList<Event>>> watchFollowedEvents() async* {
    final currentUserID = await _firestore.currentUserID();
    yield* eventFeedRef
        .doc(currentUserID)
        .collection('userEventFeed')
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
  Stream<Either<OrgFailure, KtList<OrgCalendar>>> watchFollowedOrgs() async* {
    final currentUserID = await _firestore.currentUserID();
    yield* //organizationsRef
        followingRef
            .doc(currentUserID)
            .collection('orgFollowing')
            .snapshots()
            .map(
              (snapshot) => right<OrgFailure, KtList<OrgCalendar>>(
                snapshot.docs
                    .map((doc) => OrgCalendarDto.fromFirestore(doc).toDomain())
                    .toImmutableList(),
              ),
            )
            .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const OrgFailure.insufficientPermissions());
      } else {
        return left(const OrgFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<EventFailure, Unit>> create(
      {Event event,
      List<String> categories,
      String orgID,
      String profileImageUrl}) async {
    try {
      final currentUserID = await _firestore.currentUserID();
      final eventDto =
          EventDto.fromDomain(event.copyWith(eventImageUrl: profileImageUrl));
      if (event.orgID.isEmpty) {
        await eventsRef
            .doc(currentUserID)
            .collection('userEvents')
            .doc(event.eventID.getOrCrash())
            .set(eventDto.toJson());
        await eventFeedRef
            .doc(currentUserID)
            .collection('userEventFeed')
            .doc(event.eventID.getOrCrash())
            .set(eventDto.toJson());
      } else {
        await eventsRef
            .doc(orgID)
            .collection('orgEvents')
            .doc(event.eventID.getOrCrash())
            .set(eventDto.toJson());
        // await eventFeedRef
        //     .doc(currentUserID)
        //     .collection('userEventFeed')
        //     .doc(event.eventID.getOrCrash())
        //     .set(eventDto.toJson());
      }

      for (int i = 0; i < categories.length; i++) {
        await categoriesRef
            .doc(categories[i])
            .collection('events')
            .doc(event.eventID.getOrCrash())
            .set(eventDto.toJson());
      }

      await _activityService.addEventToActivityFeed(event);
      return right(unit);
    } on FirebaseException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }
}
