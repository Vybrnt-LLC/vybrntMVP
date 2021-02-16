import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vybrnt_mvp/features/posts/domain/core/failures.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

import 'package:vybrnt_mvp/features/user/services/database_service.dart';

part 'post.freezed.dart';

@freezed
abstract class Post implements _$Post {
  const Post._();

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
      postTime: PostTime(Timestamp.now()));

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
      print(e.toString());
      return none();
    }
  }

  Future<Either<ValueFailure<User>, User>> getUser(String senderID) async {
    User user = await DatabaseService.getUserWithID(senderID);
    if (user.userName.isNotEmpty) {
      return right(user);
    }
    return left(ValueFailure.invalidUser(failedValue: user));
  }
}
