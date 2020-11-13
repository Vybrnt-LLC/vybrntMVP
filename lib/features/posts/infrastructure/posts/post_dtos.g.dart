// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDTO _$_$_PostDTOFromJson(Map<String, dynamic> json) {
  return _$_PostDTO(
    senderID: json['senderID'] as String,
    orgID: json['orgID'] as String,
    eventID: json['eventID'] as String,
    repostID: json['repostID'] as String,
    postType: json['postType'] as String,
    postHeader: json['postHeader'] as String,
    postBody: json['postBody'] as String,
    postImageURL: json['postImageURL'] as String,
    postURL: json['postURL'] as String,
    likeCount: json['likeCount'] as int,
    commentable: json['commentable'] as bool,
    commentCount: json['commentCount'] as int,
    repostable: json['repostable'] as bool,
    repostCount: json['repostCount'] as int,
    postTime: json['postTime'],
    serverTimestamp:
        const ServerTimestampConverter().fromJson(json['serverTimestamp']),
  );
}

Map<String, dynamic> _$_$_PostDTOToJson(_$_PostDTO instance) =>
    <String, dynamic>{
      'senderID': instance.senderID,
      'orgID': instance.orgID,
      'eventID': instance.eventID,
      'repostID': instance.repostID,
      'postType': instance.postType,
      'postHeader': instance.postHeader,
      'postBody': instance.postBody,
      'postImageURL': instance.postImageURL,
      'postURL': instance.postURL,
      'likeCount': instance.likeCount,
      'commentable': instance.commentable,
      'commentCount': instance.commentCount,
      'repostable': instance.repostable,
      'repostCount': instance.repostCount,
      'postTime': instance.postTime,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
