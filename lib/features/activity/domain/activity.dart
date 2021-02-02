import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vybrnt_mvp/core/auth/failures.dart';

import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'activity.freezed.dart';

@freezed
abstract class Activity with _$Activity {
  const factory Activity({
    @required UniqueId activityID,
    @required ActivityType activityType,
    @required String objectID,
    @required OwnerType ownerType,
    @required String ownerID,
    @required String titleSubject,
    @required String bodySubject,
    @required DateTime timeStamp,
    @required String imageURL,
    @required String profileID,
    @required OwnerType profileType,
  }) = _Activity;

  factory Activity.empty() => Activity(
        activityID: UniqueId(),
        activityType: ActivityType.LIKE,
        objectID: '',
        ownerType: OwnerType.USER,
        ownerID: '',
        titleSubject: '',
        bodySubject: '',
        imageURL: '',
        profileID: '',
        profileType: OwnerType.USER,
        timeStamp: DateTime.now(),
      );
}

enum OwnerType { USER, ORG }

class OwnerTypeHelper {
  static String stringOf(OwnerType ownerType) {
    switch (ownerType) {
      case OwnerType.USER:
        return 'user';
      case OwnerType.ORG:
        return 'org';
      default:
        return 'user';
    }
  }

  static OwnerType valueOf(String string) {
    switch (string) {
      case 'user':
        return OwnerType.USER;
      case 'org':
        return OwnerType.ORG;
      default:
        return OwnerType.USER;
    }
  }
}

enum ActivityType { LIKE, REPOST, COMMENT, POST, EVENT, FOLLOW, ADMIN }

class ActivityTypeHelper {
  static String stringOf(ActivityType activityType) {
    switch (activityType) {
      case ActivityType.LIKE:
        return 'like';
      case ActivityType.REPOST:
        return 'repost';
      case ActivityType.COMMENT:
        return 'comment';
      case ActivityType.POST:
        return 'post';
      case ActivityType.EVENT:
        return 'event';
      case ActivityType.FOLLOW:
        return 'follow';
      case ActivityType.ADMIN:
        return 'admin';
      default:
        return 'like';
    }
  }

  static ActivityType valueOf(String string) {
    switch (string) {
      case 'like':
        return ActivityType.LIKE;
      case 'repost':
        return ActivityType.REPOST;
      case 'comment':
        return ActivityType.COMMENT;
      case 'post':
        return ActivityType.POST;
      case 'event':
        return ActivityType.EVENT;
      case 'follow':
        return ActivityType.FOLLOW;
      case 'admin':
        return ActivityType.ADMIN;
      default:
        return ActivityType.LIKE;
    }
  }
}

extension ActivityX on Activity {
  Option<ValueFailure<dynamic>> get failureOption {
    return activityID.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
