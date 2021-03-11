import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_push_notification.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/i_event_detail_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/services/org_dtos.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';
import 'package:vybrnt_mvp/features/user/services/user_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vybrnt_mvp/features/user/services/user_list_dtos.dart';

import 'event_dtos.dart';

@LazySingleton(as: IEventDetailService)
class EventDetailService implements IEventDetailService {
  final FirebaseFirestore _firestore;
  final IPushNotificationService _pushNotificationService;

  EventDetailService(this._firestore, this._pushNotificationService);
  @override
  Stream<Either<EventFailure, KtList<UserList>>> rsvpList(
      {String eventID, bool isOrg, String userID, String orgID}) async* {
    if (isOrg) {
      yield* eventsRef
          .doc(orgID)
          .collection('orgEvents')
          .doc(eventID)
          .collection('rsvpList')
          .snapshots()
          .map(
            (snapshot) => right<EventFailure, KtList<UserList>>(
              snapshot.docs
                  .map((doc) => UserListDto.fromFirestore(doc).toDomain())
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
    } else {
      yield* eventsRef
          .doc(userID)
          .collection('userEvents')
          .doc(eventID)
          .collection('rsvpList')
          .snapshots()
          .map(
            (snapshot) => right<EventFailure, KtList<UserList>>(
              snapshot.docs
                  .map((doc) => UserListDto.fromFirestore(doc).toDomain())
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
  }

  @override
  Future addToRSVP(Event event) async {
    final currentUserID = await _firestore.currentUserID();
    final currentUserDoc = await usersRef.doc(currentUserID).get();

    final eventDto = EventDto.fromDomain(event);

    if (event.orgID.isNotEmpty) {
      eventsRef
          .doc(event.orgID)
          .collection('orgEvents')
          .doc(event.eventID.getOrCrash())
          .collection('rsvpList')
          .doc(currentUserID)
          .set({
        'profileName': currentUserDoc.get('profileName'),
        'profileImageUrl': currentUserDoc.get('profileImageUrl'),
        'primaryColor': currentUserDoc.get('primaryColor'),
        'secondaryColor': currentUserDoc.get('secondaryColor'),
      });

      eventsRef
          .doc(currentUserID)
          .collection('userEvents')
          .doc(event.eventID.getOrCrash())
          .set(eventDto.toJson());
    } else {
      await eventsRef
          .doc(event.senderID)
          .collection('userEvents')
          .doc(event.eventID.getOrCrash())
          .collection('rsvpList')
          .doc(currentUserID)
          .set({
        'profileName': currentUserDoc.get('profileName'),
        'profileImageUrl': currentUserDoc.get('profileImageUrl'),
        'primaryColor': currentUserDoc.get('primaryColor'),
        'secondaryColor': currentUserDoc.get('secondaryColor'),
      });

      await eventsRef
          .doc(currentUserID)
          .collection('userEvents')
          .doc(event.eventID.getOrCrash())
          .set(eventDto.toJson());
    }

    _pushNotificationService.scheduleEventReminder(event);
  }

  @override
  Future removeFromRSVP(Event event) async {
    final currentUserID = await _firestore.currentUserID();

    if (event.orgID.isNotEmpty) {
      await eventsRef
          .doc(event.orgID)
          .collection('orgEvents')
          .doc(event.eventID.getOrCrash())
          .collection('rsvpList')
          .doc(currentUserID)
          .get()
          .then((doc) {
        if (doc.exists) {
          doc.reference.delete();
        }
      });
    } else {
      await eventsRef
          .doc(event.senderID)
          .collection('userEvents')
          .doc(event.eventID.getOrCrash())
          .collection('rsvpList')
          .doc(currentUserID)
          .get()
          .then((doc) {
        if (doc.exists) {
          doc.reference.delete();
        }
      });
    }

    // eventsRef
    //     .doc(currentUserID)
    //     .collection('userEvents')
    //     .doc(event.eventID.getOrCrash())
    //     .get()
    //     .then((doc) {
    //   if (doc.exists) {
    //     doc.reference.delete();
    //   }
    // });
  }

  @override
  Future<bool> isRSVPed(
      {String currentUserID,
      String eventID,
      bool isOrg,
      String userID,
      String orgID}) async {
    if (isOrg) {
      final rsvp = await eventsRef
          .doc(orgID)
          .collection('orgEvents')
          .doc(eventID)
          .collection('rsvpList')
          .doc(currentUserID)
          .get();
      return rsvp.exists;
    } else {
      final rsvp = await eventsRef
          .doc(userID)
          .collection('userEvents')
          .doc(eventID)
          .collection('rsvpList')
          .doc(currentUserID)
          .get();
      return rsvp.exists;
    }
  }

  @override
  Future<Organization> getOrgProfile(String orgID) async {
    final orgDoc = await organizationsRef.doc(orgID).get();
    return OrgDto.fromFirestore(orgDoc).toDomain();
  }

  @override
  Future<User> getUserProfile(String userID) async {
    final userDoc = await usersRef.doc(userID).get();
    return UserDto.fromFirestore(userDoc).toDomain();
  }

  @override
  Future deleteEvent(Event event) async {
    if (event.orgID.isNotEmpty) {
      await eventsRef
          .doc(event.orgID)
          .collection('orgEvents')
          .doc(event.eventID.getOrCrash())
          .get()
          .then((doc) {
        if (doc.exists) {
          doc.reference.delete();
        }
      });
    } else {
      await eventsRef
          .doc(event.senderID)
          .collection('userEvents')
          .doc(event.eventID.getOrCrash())
          .get()
          .then((doc) {
        if (doc.exists) {
          doc.reference.delete();
        }
      });
    }
    await communityEventsRef.doc(event.eventID.getOrCrash()).get().then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
  }

  @override
  Future<Event> getEvent({String eventID, String type, String typeID}) async {
    DocumentSnapshot eventDoc;

    eventDoc = await eventsRef
        .doc(typeID)
        .collection(type + 'Events')
        .doc(eventID)
        .get();

    return EventDto.fromFirestore(eventDoc).toDomain();
  }
}
