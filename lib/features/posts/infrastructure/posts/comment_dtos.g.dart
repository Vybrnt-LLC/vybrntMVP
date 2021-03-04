// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDTO _$_$_CommentDTOFromJson(Map<String, dynamic> json) {
  return _$_CommentDTO(
    commentBody: json['commentBody'] as String,
    senderID: json['senderID'] as String,
    commentDate:
        const TimestampConverter().fromJson(json['commentDate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_CommentDTOToJson(_$_CommentDTO instance) =>
    <String, dynamic>{
      'commentBody': instance.commentBody,
      'senderID': instance.senderID,
      'commentDate': const TimestampConverter().toJson(instance.commentDate),
    };
