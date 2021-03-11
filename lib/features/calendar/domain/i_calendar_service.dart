import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_calendar.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/org_failure.dart';
import 'event_failure.dart';
import 'models/org_list_model.dart';

abstract class ICalendarService {
  Stream<Either<EventFailure, KtList<Event>>> watchFollowedEvents();
  Stream<Either<OrgFailure, KtList<OrgCalendar>>> watchFollowedOrgs();
  Future toggleTrue(String currentUserID, String orgID);
  Future toggleFalse(String currentUserID, String orgID);
  Future<bool> isOrgToggled(String currentUserID, String orgID);
  Stream<Either<EventFailure, KtList<OrgList>>> getAdmins(String currentUserID);
  Stream<KtList<String>> getAdminIDs(String currentUserID);
  Future<Either<EventFailure, Unit>> create(
      {Event event,
      List<String> categories,
      String orgID,
      String profileImageUrl});
  Future<String> uploadEventImage(File imageFile);
  Future<File> compressImage(String eventImageId, File image);
}
