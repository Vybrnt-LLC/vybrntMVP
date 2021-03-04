// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityDTO _$_$_ActivityDTOFromJson(Map<String, dynamic> json) {
  return _$_ActivityDTO(
    activityType: json['activityType'] as String,
    objectID: json['objectID'] as String,
    ownerType: json['ownerType'] as String,
    ownerID: json['ownerID'] as String,
    titleSubject: json['titleSubject'] as String,
    bodySubject: json['bodySubject'] as String,
    timeStamp:
        const TimestampConverter().fromJson(json['timeStamp'] as Timestamp),
    imageURL: json['imageURL'] as String,
    profileID: json['profileID'] as String,
    profileType: json['profileType'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ActivityDTOToJson(_$_ActivityDTO instance) =>
    <String, dynamic>{
      'activityType': instance.activityType,
      'objectID': instance.objectID,
      'ownerType': instance.ownerType,
      'ownerID': instance.ownerID,
      'titleSubject': instance.titleSubject,
      'bodySubject': instance.bodySubject,
      'timeStamp': const TimestampConverter().toJson(instance.timeStamp),
      'imageURL': instance.imageURL,
      'profileID': instance.profileID,
      'profileType': instance.profileType,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
