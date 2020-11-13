// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityDTO _$_$_ActivityDTOFromJson(Map<String, dynamic> json) {
  return _$_ActivityDTO(
    type: json['type'] as String,
    userID: json['userID'] as String,
    orgID: json['orgID'] as String,
    profileImageURL: json['profileImageURL'] as String,
    postID: json['postID'] as String,
    eventID: json['eventID'] as String,
    commentID: json['commentID'] as String,
    username: json['username'] as String,
    timeStamp: json['timeStamp'],
    isOrg: json['isOrg'] as bool,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ActivityDTOToJson(_$_ActivityDTO instance) =>
    <String, dynamic>{
      'type': instance.type,
      'userID': instance.userID,
      'orgID': instance.orgID,
      'profileImageURL': instance.profileImageURL,
      'postID': instance.postID,
      'eventID': instance.eventID,
      'commentID': instance.commentID,
      'username': instance.username,
      'timeStamp': instance.timeStamp,
      'isOrg': instance.isOrg,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
