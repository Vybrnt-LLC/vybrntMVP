// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportDto _$_$_ReportDtoFromJson(Map<String, dynamic> json) {
  return _$_ReportDto(
    senderID: json['senderID'] as String,
    contentID: json['contentID'] as String,
    contentType: json['contentType'] as String,
    ownerID: json['ownerID'] as String,
    ownerType: json['ownerType'] as String,
    message: json['message'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ReportDtoToJson(_$_ReportDto instance) =>
    <String, dynamic>{
      'senderID': instance.senderID,
      'contentID': instance.contentID,
      'contentType': instance.contentType,
      'ownerID': instance.ownerID,
      'ownerType': instance.ownerType,
      'message': instance.message,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
