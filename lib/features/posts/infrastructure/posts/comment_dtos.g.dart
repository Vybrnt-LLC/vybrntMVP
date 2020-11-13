// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDTO _$_$_CommentDTOFromJson(Map<String, dynamic> json) {
  return _$_CommentDTO(
    commentBody: json['commentBody'] as String,
    senderID: json['senderID'] as String,
    commentDate: json['commentDate'],
  );
}

Map<String, dynamic> _$_$_CommentDTOToJson(_$_CommentDTO instance) =>
    <String, dynamic>{
      'commentBody': instance.commentBody,
      'senderID': instance.senderID,
      'commentDate': instance.commentDate,
    };
