import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/university.dart';

part 'university_dto.freezed.dart';
part 'university_dto.g.dart';

@freezed
abstract class UniversityDto with _$UniversityDto {
  factory UniversityDto({
    @JsonKey(ignore: true) String universityID,
    @required String name,
    @required String shortenName,
    @required String abbreviation,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _UniversityDto;

  factory UniversityDto.fromDomain(University university) {
    return UniversityDto(
      name: university.name,
      shortenName: university.shortenName,
      universityID: university.universityID.getOrCrash(),
      abbreviation: university.abbreviation,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory UniversityDto.fromJson(Map<String, dynamic> json) =>
      _$UniversityDtoFromJson(json);

  factory UniversityDto.fromFirestore(DocumentSnapshot doc) {
    return UniversityDto.fromJson(doc.data()).copyWith(universityID: doc.id);
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

extension UniversityDtoX on UniversityDto {
  University toDomain() {
    return University(
      universityID: UniqueId.fromUniqueString(universityID),
      abbreviation: abbreviation,
      name: name,
      shortenName: shortenName,
    );
  }
}
