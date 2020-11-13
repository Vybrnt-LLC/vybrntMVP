// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDto _$_$_EventDtoFromJson(Map<String, dynamic> json) {
  return _$_EventDto(
    senderID: json['senderID'] as String,
    eventName: json['eventName'] as String,
    startTime: json['startTime'],
    endTime: json['endTime'],
    timeStamp: json['timeStamp'],
    eventCaption: json['eventCaption'] as String,
    eventUrl: json['eventUrl'] as String,
    eventLocation: json['eventLocation'] as String,
    isOrg: json['isOrg'] as bool,
    orgID: json['orgID'] as String,
    eventImageUrl: json['eventImageUrl'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_EventDtoToJson(_$_EventDto instance) =>
    <String, dynamic>{
      'senderID': instance.senderID,
      'eventName': instance.eventName,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'timeStamp': instance.timeStamp,
      'eventCaption': instance.eventCaption,
      'eventUrl': instance.eventUrl,
      'eventLocation': instance.eventLocation,
      'isOrg': instance.isOrg,
      'orgID': instance.orgID,
      'eventImageUrl': instance.eventImageUrl,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
