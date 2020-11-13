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
    @required String type,
    @required String userID,
    @required String orgID,
    @required String profileImageURL,
    @required String postID,
    @required String eventID,
    @required String commentID,
    @required String username,
    @required DateTime timeStamp,
    @required bool isOrg,
  }) = _Activity;

  factory Activity.empty() => Activity(
        activityID: UniqueId(),
        type: '',
        userID: '',
        orgID: '',
        profileImageURL: '',
        postID: '',
        eventID: '',
        commentID: '',
        timeStamp: DateTime.now(),
        username: '',
        isOrg: false,
      );
}

extension ActivityX on Activity {
  Option<ValueFailure<dynamic>> get failureOption {
    return activityID.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
