import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_calendar.dart';

part 'org_calendar_dtos.freezed.dart';
part 'org_calendar_dtos.g.dart';

@freezed
abstract class OrgCalendarDto with _$OrgCalendarDto {
  factory OrgCalendarDto({
    @JsonKey(ignore: true) String orgID,
    @required String abbv,
    @required String name,
    @required String profileImageUrl,
    @required bool isToggled,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _OrgCalendarDto;

  factory OrgCalendarDto.fromDomain(OrgCalendar org) {
    return OrgCalendarDto(
      orgID: org.orgID.getOrCrash(),
      abbv: org.abbv,
      name: org.name,
      profileImageUrl: org.profileImageUrl,
      isToggled: org.isToggled,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory OrgCalendarDto.fromJson(Map<String, dynamic> json) =>
      _$OrgCalendarDtoFromJson(json);

  factory OrgCalendarDto.fromFirestore(DocumentSnapshot doc) {
    return OrgCalendarDto.fromJson(doc.data()).copyWith(orgID: doc.id);
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

extension OrgCalendarDtoX on OrgCalendarDto {
  OrgCalendar toDomain() {
    return OrgCalendar(
      orgID: UniqueId.fromUniqueString(orgID),
      abbv: abbv,
      name: name,
      profileImageUrl: profileImageUrl,
      isToggled: isToggled,
    );
  }
}
