import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';

part 'org_list_dtos.freezed.dart';
part 'org_list_dtos.g.dart';

@freezed
abstract class OrgListDto with _$OrgListDto {
  factory OrgListDto({
    @JsonKey(ignore: true) String orgID,
    @required String name,
    @required String profileImageUrl,
    @required String abbv,
    @required String primaryColor,
    @required String secondaryColor,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _OrgListDto;

  factory OrgListDto.fromDomain(OrgList org) {
    return OrgListDto(
      orgID: org.orgID.getOrCrash(),
      name: org.name,
      abbv: org.abbv,
      profileImageUrl: org.profileImageUrl,
      primaryColor: org.primaryColor,
      secondaryColor: org.secondaryColor,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory OrgListDto.fromJson(Map<String, dynamic> json) =>
      _$OrgListDtoFromJson(json);

  factory OrgListDto.fromFirestore(DocumentSnapshot doc) {
    return OrgListDto.fromJson(doc.data()).copyWith(orgID: doc.id);
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

extension OrgListDtoX on OrgListDto {
  OrgList toDomain() {
    return OrgList(
      orgID: UniqueId.fromUniqueString(orgID),
      name: name,
      abbv: abbv,
      profileImageUrl: profileImageUrl,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
    );
  }
}
