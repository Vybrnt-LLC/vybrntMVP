import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/emember.dart';

part 'emember_dtos.freezed.dart';
part 'emember_dtos.g.dart';

@freezed
abstract class EMemberDto with _$EMemberDto {
  factory EMemberDto({
    @JsonKey(ignore: true) String userID,
    @required String position,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _EMemberDto;

  factory EMemberDto.fromDomain(EMember eMember) {
    return EMemberDto(
      userID: eMember.userID.getOrCrash(),
      position: eMember.position,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory EMemberDto.fromJson(Map<String, dynamic> json) =>
      _$EMemberDtoFromJson(json);

  factory EMemberDto.fromFirestore(DocumentSnapshot doc) {
    return EMemberDto.fromJson(doc.data()).copyWith(userID: doc.id);
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

extension EMemberDtoX on EMemberDto {
  EMember toDomain() {
    return EMember(
      userID: UniqueId.fromUniqueString(userID),
      position: position,
    );
  }
}
