import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/report/report.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/faq.dart';

part 'report_dtos.freezed.dart';
part 'report_dtos.g.dart';

@freezed
abstract class ReportDto with _$ReportDto {
  factory ReportDto({
    @JsonKey(ignore: true) String reportID,
    @required String senderID,
    @required String contentID,
    @required String contentType,
    @required String ownerID,
    @required String ownerType,
    @required String message,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _ReportDto;

  factory ReportDto.fromDomain(Report report) {
    return ReportDto(
      reportID: report.reportID.getOrCrash(),
      senderID: report.senderID,
      contentID: report.contentID,
      contentType: report.contentType,
      ownerID: report.ownerID,
      ownerType: report.ownerType,
      message: report.message,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory ReportDto.fromJson(Map<String, dynamic> json) =>
      _$ReportDtoFromJson(json);

  factory ReportDto.fromFirestore(DocumentSnapshot doc) {
    return ReportDto.fromJson(doc.data()).copyWith(reportID: doc.id);
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

extension ReportDtoX on ReportDto {
  Report toDomain() {
    return Report(
      reportID: UniqueId.fromUniqueString(reportID),
      senderID: senderID,
      contentID: contentID,
      contentType: contentType,
      ownerID: ownerID,
      ownerType: ownerType,
      message: message,
    );
  }
}
