import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vybrnt_mvp/features/posts/domain/core/failures.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';

part 'post.freezed.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    @required PostID postID,
    @required SenderID senderID,
    @required OrgID orgID,
    @required EventID eventID,
    @required RepostID repostID,
    @required PostType postType,
    @required PostHeader postHeader,
    @required PostBody postBody,
    @required PostImageURL postImageURL,
    @required PostURL postURL,
    @required LikeCount likeCount,
    @required Commentable commentable,
    @required CommentCount commentCount,
    //@required CommentsSection<Comment> commentsSection,
    @required Repostable repostable,
    @required RepostCount repostCount,
    @required PostTime postTime,
  }) = _Post;

  factory Post.empty() => Post(
      senderID: SenderID("Unknown Sender"),
      postID: PostID(""),
      orgID: OrgID(""),
      eventID: EventID(""),
      repostID: RepostID(""),
      postType: PostType(""),
      postHeader: PostHeader(""),
      postImageURL: PostImageURL(""),
      postURL: PostURL(""),
      postBody: PostBody(""),
      likeCount: LikeCount(0),
      commentable: Commentable(true),
      commentCount: CommentCount(0),
      //commentsSection: CommentsSection(KtList<Comment>.empty().toMutableList()),
      repostable: Repostable(true),
      repostCount: RepostCount(0),
      postTime: PostTime(DateTime.now()));
}

extension PostX on Post {
  Option<ValueFailure<dynamic>> get failureOption {
    try {
      return postBody.failureOrUnit
          .fold((l) => some(l), (_) => none()); // (r) => null)
      // .andThen(commentsSection.failureOrUnit)
      // .andThen(commentsSection
      //     .getOrCrash()
      //     //getting the failureOption from the Comment ENTITY - NOT a failureOrUnit from a VALUE OBJECT
      //     .map((comment) => comment.failureOption)
      //     .filter((o) => o.isSome())
      //     //If we can't get the 0th element, the list is empty. In such a case, it's valid.
      //     .getOrElse(0, (_) => none())
      //     .fold(() => right(unit), (f) => left(f)))
      // .fold((f) => some(f), (_) => none());
    } catch (e) {
      debugPrint(e.toString());
      return none();
    }
  }
}
