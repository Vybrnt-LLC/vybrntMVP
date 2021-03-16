import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/emember.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/faq.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

import 'models/org_failure.dart';

abstract class IOrgService {
  Future<OrgList> getOrgList(String orgID);
  Future<UserList> getUserList(String userID);
  Future<User> getUserWithColor(String userID);
  Future<Organization> getOrgProfile(String orgID);
  Future<KtList<UserList>> getUserKtList(KtList<String> userIDList);
  Future<KtList<User>> getUserWithColorsKtListFromEMember(
      KtList<EMember> eMemberList);
  Future<KtList<OrgList>> getOrgKtList(KtList<String> orgIDList);
  Future<int> postCount(String orgID);
  Future<int> memberCount(String orgID);
  Future<int> photoCount(String orgID);
  Future<bool> isAdmin(String orgID);
  Future followOrg(String orgID);
  Future unfollowOrg(String orgID);
  Future<bool> isFollowing(String orgID);
  Stream<KtList<String>> admins(String orgID);
  Stream<KtList<String>> members(String orgID);
  Stream<Either<EventFailure, KtList<Event>>> watchOrgEvents(
      {String orgID, bool isOrg});
  Future<Either<OrgFailure, Unit>> updateOrganization(Organization org);
  Future<Either<OrgFailure, Unit>> createOrganization(Organization org);
  Stream<KtList<FAQ>> watchFAQ(String orgID);
  Stream<KtList<EMember>> watchEBoard(String orgID);
  Stream<KtList<UserList>> searchUser(String name);
  Future addEMember(EMember eMember, String orgID);
  Future removeEMember(String userID, String orgID);
  Future addFAQ(FAQ faq, String orgID);
  Future removeFAQ(String faqID, String orgID);
  Future<String> uploadOrgProfileImage(String url, File imageFile);
  Future<String> uploadOrgBannerImage(String url, File imageFile);
  Future<File> compressImage(String photoId, File image);
  Stream<Organization> getOrgStream(String orgID);
  Stream<KtList<OrgList>> searchOrg(String name);
  Stream<KtList<OrgList>> searchVerifiedOrg(String name);
  Future addUserToNotify(String orgID);
  Future removeUserFromNotify(String orgID);
  Future<bool> isNotified(String orgID);
  Future<bool> isBlocked(String orgID);
  Future<bool> isBlocking(String orgID);
  Future blockOrg(String orgID);
  Future unblockOrg(String orgID);
}
