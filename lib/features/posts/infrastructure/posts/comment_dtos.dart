import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';

import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';

part 'comment_dtos.freezed.dart';
part 'comment_dtos.g.dart';

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp date) {
    return date.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@freezed
abstract class CommentDTO implements _$CommentDTO {
  const factory CommentDTO({
    @JsonKey(ignore: true) String commentID,
    @required String commentBody,
    @required String senderID,
    @required @TimestampConverter() DateTime commentDate,
  }) = _CommentDTO;

  factory CommentDTO.fromFirestore(DocumentSnapshot doc) {
    return CommentDTO.fromJson(doc.data()).copyWith(commentID: doc.id);
  }

  factory CommentDTO.fromDomain(Comment comment) {
    return CommentDTO(
        commentID: comment.commentID.getOrCrash(),
        commentBody: comment.commentBody.getOrCrash(),
        senderID: comment.senderID.getOrCrash(),
        commentDate: comment.commentDate.getOrCrash());
  }

  factory CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentDTOFromJson(json);
}

extension CommentDTOX on CommentDTO {
  Comment toDomain() {
    return Comment(
        commentID: CommentID(commentID),
        commentBody: CommentBody(commentBody),
        senderID: SenderID(senderID),
        commentDate: CommentDate(commentDate));
  }
}
