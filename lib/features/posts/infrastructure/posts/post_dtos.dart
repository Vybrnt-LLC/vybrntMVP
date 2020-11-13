import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class PostDTO implements _$PostDTO {
  const PostDTO._();

  const factory PostDTO({
    @JsonKey(ignore: true) String postID,
    @required String senderID,
    @required String orgID,
    @required String eventID,
    @required String repostID,
    @required String postType,
    @required String postHeader,
    @required String postBody,
    @required String postImageURL,
    @required String postURL,
    @required int likeCount,
    @required bool commentable,
    @required int commentCount,
    //@required List<CommentDTO> commentsSection,
    @required bool repostable,
    @required int repostCount,
    //Placeholder -> Time on the server
    @required dynamic postTime,
    @required @ServerTimestampConverter() FieldValue serverTimestamp,
  }) = _PostDTO;

  Post toDomain() {
    return Post(
      postID: PostID(postID),
      senderID: SenderID(senderID),
      orgID: OrgID(orgID),
      eventID: EventID(eventID),
      repostID: RepostID(repostID),
      postType: PostType(postType),
      postHeader: PostHeader(postHeader),
      postBody: PostBody(postBody),
      postImageURL: PostImageURL(postImageURL),
      postURL: PostURL(postURL),
      likeCount: LikeCount(likeCount),
      commentable: Commentable(commentable),
      //commentsSection: CommentsSection(commentsSection
      // .map((dto) => dto.toDomain())
      // .toImmutableList()
      // .toMutableList()),
      commentCount: CommentCount(commentCount),
      repostable: Repostable(repostable),
      postTime: PostTime(postTime),
      repostCount: RepostCount(repostCount),
    );
  }

  factory PostDTO.fromDomain(Post post) {
    return PostDTO(
      postID: post.postID.getOrCrash(),
      senderID: post.senderID.getOrCrash(),
      orgID: post.orgID.getOrCrash(),
      eventID: post.eventID.getOrCrash(),
      repostID: post.repostID.getOrCrash(),
      postType: post.postType.getOrCrash(),
      postHeader: post.postHeader.getOrCrash(),
      postBody: post.postBody.getOrCrash(),
      postImageURL: post.postImageURL.getOrCrash(),
      postURL: post.postURL.getOrCrash(),
      likeCount: post.likeCount.getOrCrash(),
      commentable: post.commentable.getOrCrash(),
      // commentsSection: post.commentsSection
      //   .getOrCrash()
      //   .map((comment) => CommentDTO.fromDomain(comment))
      //   .asList(),
      commentCount: post.commentCount.getOrCrash(),
      repostable: post.repostable.getOrCrash(),
      repostCount: post.repostCount.getOrCrash(),
      postTime: post.postTime.getOrCrash(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  factory PostDTO.fromJson(Map<String, dynamic> json) =>
      _$PostDTOFromJson(json);

  factory PostDTO.fromFirestore(DocumentSnapshot doc) {
    return PostDTO.fromJson(doc.data()).copyWith(postID: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
