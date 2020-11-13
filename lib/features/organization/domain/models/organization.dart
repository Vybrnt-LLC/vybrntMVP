import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'organization.freezed.dart';

@freezed
abstract class Organization with _$Organization {
  const factory Organization({
    @required UniqueId orgID,
    @required String abbv,
    @required String name,
    @required String bannerImageUrl,
    @required String missionStatement,
    @required String profileImageUrl,
    @required String officeLocation,
    @required String email,
    @required String primaryColor,
    @required String secondaryColor,
    @required String orgName,
    @required bool verified,
    @required String adminTitle,
    @required String linkedInURL,
    @required String twitterURL,
    @required String facebookURL,
    @required String instagramURL,
    @required String websiteURL,
  }) = _Organization;

  factory Organization.empty() => Organization(
      orgID: UniqueId(),
      abbv: '',
      name: '',
      bannerImageUrl: '',
      profileImageUrl: '',
      missionStatement: '',
      officeLocation: '',
      email: '',
      primaryColor: 'ff000000',
      secondaryColor: 'ff2196f3',
      orgName: '',
      verified: false,
      adminTitle: 'EBoard',
      linkedInURL: '',
      twitterURL: '',
      facebookURL: '',
      instagramURL: '',
      websiteURL: '');
}

extension OrganizationX on Organization {
  Option<ValueFailure<dynamic>> get failureOption {
    return orgID.failureOrUnit
        // .andThen(senderID.failureOrUnit)
        // .andThen(todos.failureOrUnit)
        // .andThen(
        //   todos
        //       .getOrCrash()
        //       .map((todoItem) => todoItem.failureOption)
        //       .filter((o) => o.isSome())
        //       .getOrElse(0, (_) => none())
        //       .fold(() => right(unit), (f) => left(f)),
        // )
        .fold((f) => some(f), (_) => none());
  }
}
