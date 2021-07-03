import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/university.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/emember.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

import 'models/user_failure.dart';

abstract class IUserService {
  Future<OrgList> getOrgList(String orgID);
  Future<UserList> getUserList(String userID);
  Future<User> getUserWithColor(String userID);
  Future<Organization> getOrgProfile(String orgID);
  Future<KtList<UserList>> getUserKtList(KtList<String> userIDList);
  Future<KtList<OrgList>> getOrgKtList(KtList<String> orgIDList);
  Future followUser(String userID);
  Future unfollowUser(String userID);
  Stream<KtList<String>> getUserPhotos(String userID);
  Future<bool> isFollowing(String userID);
  Stream<KtList<String>> following(String userID);
  Stream<KtList<String>> followers(String userID);
  Stream<KtList<String>> followedOrgs(String userID);
  Stream<Either<EventFailure, KtList<Event>>> watchUserEvents(String userID);
  Future updateUser(User user);
  Future<String> uploadUserProfileImage(String url, File imageFile);
  Future<String> uploadUserBannerImage(String url, File imageFile);
  Future<File> compressImage(String photoId, File image);
  Stream<User> getUserStream(String userID);
  Future<KtList<User>> getUserWithColorsKtListFromEMember(
      KtList<EMember> eMemberList);
  Future addUserToNotify(String userID);
  Future removeUserFromNotify(String userID);
  Future<bool> isNotified(String userID);
  Future<bool> isBlocked(String userID);
  Future<bool> isBlocking(String userID);
  Future blockUser(String userID);
  Future unblockUser(String userID);
  Future<bool> isUsernameTaken(String username);
  Future<Either<UserFailure, Unit>> saveOnboardingInfo(
      Map<String, dynamic> info, User user);
  Future<List<University>> getUniversities();
  Future<List<String>> getColleges(String universityID);
  Future<List<String>> getCampuses(String universityID);
  Future<List<String>> getMajors(
      String universityID, List<String> listOfColleges);

  //Need to change this and state so that the valueobject and method return a failure.
}
