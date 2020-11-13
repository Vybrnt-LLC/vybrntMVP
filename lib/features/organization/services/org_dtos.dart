import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';

part 'org_dtos.freezed.dart';
part 'org_dtos.g.dart';

@freezed
abstract class OrgDto with _$OrgDto {
  factory OrgDto({
    @JsonKey(ignore: true) String orgID,
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
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _OrgDto;

  factory OrgDto.fromDomain(Organization org) {
    return OrgDto(
      orgID: org.orgID.getOrCrash(),
      abbv: org.abbv,
      name: org.name,
      bannerImageUrl: org.bannerImageUrl,
      profileImageUrl: org.profileImageUrl,
      missionStatement: org.missionStatement,
      officeLocation: org.officeLocation,
      email: org.email,
      primaryColor: org.primaryColor,
      secondaryColor: org.secondaryColor,
      orgName: org.orgName,
      verified: org.verified,
      adminTitle: org.adminTitle,
      linkedInURL: org.linkedInURL,
      twitterURL: org.twitterURL,
      facebookURL: org.facebookURL,
      instagramURL: org.instagramURL,
      websiteURL: org.websiteURL,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory OrgDto.fromJson(Map<String, dynamic> json) => _$OrgDtoFromJson(json);

  factory OrgDto.fromFirestore(DocumentSnapshot doc) {
    return OrgDto.fromJson(doc.data()).copyWith(orgID: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

extension OrgDtoX on OrgDto {
  Organization toDomain() {
    return Organization(
      orgID: UniqueId.fromUniqueString(orgID),
      abbv: abbv,
      name: name,
      bannerImageUrl: bannerImageUrl,
      profileImageUrl: profileImageUrl,
      missionStatement: missionStatement,
      officeLocation: officeLocation,
      email: email,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      orgName: orgName,
      verified: verified,
      adminTitle: adminTitle,
      linkedInURL: linkedInURL,
      twitterURL: twitterURL,
      facebookURL: facebookURL,
      instagramURL: instagramURL,
      websiteURL: websiteURL,
    );
  }
}
