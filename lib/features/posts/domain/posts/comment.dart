import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/features/posts/domain/core/failures.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';

part 'comment.freezed.dart';

@freezed
abstract class Comment implements _$Comment {
  const Comment._();

  const factory Comment({
    @required CommentID commentID,
    @required SenderID senderID,
    @required CommentBody commentBody,
    @required CommentDate commentDate,
  }) = _Comment;

  factory Comment.empty() => Comment(
      commentID: CommentID(""),
      senderID: SenderID("current signed-in user id"),
      commentBody: CommentBody(""),
      commentDate: CommentDate(Timestamp.now()));

  Option<ValueFailure<dynamic>> get failureOption {
    return commentBody.value.fold((f) => some(f), (_) => none());
  }
}
