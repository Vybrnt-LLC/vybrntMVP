import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

abstract class IEventDetailService {
  Stream<Either<EventFailure, KtList<UserList>>> rsvpList(
      {String eventID, bool isOrg, String userID, String orgID});
  Future addToRSVP(Event event);
  Future removeFromRSVP(Event event);
  Future<bool> isRSVPed(
      {String currentUserID,
      String eventID,
      bool isOrg,
      String userID,
      String orgID});
  Future<Organization> getOrgProfile(String orgID);
  Future<User> getUserProfile(String userID);
  Future deleteEvent(Event event);
  Future<Event> getEvent({String eventID, String type, String typeID});
}
