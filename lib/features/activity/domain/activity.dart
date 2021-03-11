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
        activityType: ActivityType.like,
        objectID: '',
        ownerType: OwnerType.user,
        ownerID: '',
        titleSubject: '',
        bodySubject: '',
        imageURL: '',
        profileID: '',
        profileType: OwnerType.user,
        timeStamp: DateTime.now(),
      );
}

enum OwnerType { user, org }

class OwnerTypeHelper {
  static String stringOf(OwnerType ownerType) {
    switch (ownerType) {
      case OwnerType.user:
        return 'user';
      case OwnerType.org:
        return 'org';
      default:
        return 'user';
    }
  }

  static OwnerType valueOf(String string) {
    switch (string) {
      case 'user':
        return OwnerType.user;
      case 'org':
        return OwnerType.org;
      default:
        return OwnerType.user;
    }
  }
}

enum ActivityType { like, repost, comment, post, event, follow, admin }

class ActivityTypeHelper {
  static String stringOf(ActivityType activityType) {
    switch (activityType) {
      case ActivityType.like:
        return 'like';
      case ActivityType.repost:
        return 'repost';
      case ActivityType.comment:
        return 'comment';
      case ActivityType.post:
        return 'post';
      case ActivityType.event:
        return 'event';
      case ActivityType.follow:
        return 'follow';
      case ActivityType.admin:
        return 'admin';
      default:
        return 'like';
    }
  }

  static ActivityType valueOf(String string) {
    switch (string) {
      case 'like':
        return ActivityType.like;
      case 'repost':
        return ActivityType.repost;
      case 'comment':
        return ActivityType.comment;
      case 'post':
        return ActivityType.post;
      case 'event':
        return ActivityType.event;
      case 'follow':
        return ActivityType.follow;
      case 'admin':
        return ActivityType.admin;
      default:
        return ActivityType.like;
    }
  }
}

extension ActivityX on Activity {
  Option<ValueFailure<dynamic>> get failureOption {
    return activityID.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
