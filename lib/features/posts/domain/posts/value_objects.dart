import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/posts/domain/core/failures.dart';
import 'package:vybrnt_mvp/features/posts/domain/core/value_objects.dart';
import 'package:vybrnt_mvp/features/posts/domain/core/value_validators.dart';

//POST: The entity that contains all the information that goes into making a post
//PostID - the id number for each post
class PostID extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PostID(String input) {
    assert(input != null);
    return PostID._(
      validateID(input),
    );
  }

  const PostID._(this.value);
}

//SenderID - the id number for the person who made the post. Must be a user profile
class SenderID extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory SenderID(String input) {
    assert(input != null);
    return SenderID._(
      validateID(input),
    );
  }
  const SenderID._(this.value);
}

//OPTIONAL PARAMETER - only when a post is uploaded to an organization
//OrgID - the id number for the organization where the post was uploaded
class OrgID extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory OrgID(String input) {
    assert(input != null);
    return OrgID._(
      validateID(input),
    );
  }

  const OrgID._(this.value);
}

//OPTIONAL PARAMETER - only when a post is linked to an event
//EventID - the id number for the event that's linked to the post
class EventID extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EventID(String input) {
    return EventID._(
      validateID(input),
    );
  }

  const EventID._(this.value);
}

//OPTIONAL PARAMETER - only when a post is reposted by another user
//EventID - the id number for the user who reposted the post
class RepostID extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory RepostID(String input) {
    return RepostID._(
      validateID(input),
    );
  }

  const RepostID._(this.value);
}

//PostType - the type of profile who made the post (determines the shape/layout)
class PostType extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PostType(String input) {
    return PostType._(
      validatePostType(input),
    );
  }

  const PostType._(this.value);
}

//Header - the title attached with post, commonly used for events
class PostHeader extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory PostHeader(String input) {
    try {
      return PostHeader._(
          //runs two validators on input (PostBody or textbody)
          validatePostHeader(input));
    } catch (e) {
      return PostHeader("");
    }
  }

  const PostHeader._(this.value);
}

//PostBody - the main body of text for the post, necessary for all posts
class PostBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1500;

  factory PostBody(String input) {
    return PostBody._(
        //runs two validators on input (PostBody or textbody)
        validatePostBody(input));
  }

  const PostBody._(this.value);
}

//
class IsImageToggled extends ValueObject<bool> {
  final Either<ValueFailure<bool>, bool> value;

  factory IsImageToggled(bool input) {
    assert(input != null);
    return IsImageToggled._(
      validateCommentable(input),
    );
  }

  const IsImageToggled._(this.value);
}

//OPTIONAL PARAMETER - only when a post has a picture
//PostImageURL - the picture attached to post, commonly used by users for personal pictures and by organizations for event flyers
class PostImageURL extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PostImageURL(String input) {
    return PostImageURL._(
      validateURL(input),
    );
  }

  const PostImageURL._(this.value);
}

class PostURL extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PostURL(String input) {
    return PostURL._(
      validateURL(input),
    );
  }

  const PostURL._(this.value);
}

//LikeCount - the int count of likes on a post, useful for displaying feedback and used as metric for recommendation
class LikeCount extends ValueObject<int> {
  final Either<ValueFailure<int>, int> value;

  factory LikeCount(int input) {
    assert(input != null);
    return LikeCount._(
      validateLikeCount(input),
    );
  }

  const LikeCount._(this.value);
}

//Commentable - whether other users can comment on this post, useful for concise announcments or to prevent spam
class Commentable extends ValueObject<bool> {
  final Either<ValueFailure<bool>, bool> value;

  factory Commentable(bool input) {
    assert(input != null);
    return Commentable._(
      validateCommentable(input),
    );
  }

  const Commentable._(this.value);
}

//CommentCount - the int count of comments on a post, useful for displaying feedback and used as metric for recommendation
class CommentCount extends ValueObject<int> {
  final Either<ValueFailure<int>, int> value;

  factory CommentCount(int input) {
    assert(input != null);
    return CommentCount._(
      validateCommentCount(input),
    );
  }

  const CommentCount._(this.value);
}

//OPTIONAL PARAMETER: users can disable comments on posts
//CommentsSection - list of comments underneath a post
class CommentsSection<T> extends ValueObject<KtMutableList> {
  final Either<ValueFailure<KtMutableList>, KtMutableList> value;

  factory CommentsSection(KtMutableList<T> input) {
    //input = listOf().toMutableList();
    //assert(input != null);
    // input.add(
    //   Comment(
    //   commentBody: CommentBody("CommentBody"),
    //   commentDate: CommentDate(Timestamp.now()),
    //   commentID: CommentID("Comment ID"),
    //   senderID: SenderID("6rlBUnSx8WCU7jDl07Kd"),
    // ));
    return null;
    // return CommentsSection._(
    //   validateCommentsSection(input)
    // );
  }

  const CommentsSection._(this.value);
}

//Repostable - whether other users can repost the current post, useful for sharing public events
class Repostable extends ValueObject<bool> {
  final Either<ValueFailure<bool>, bool> value;

  factory Repostable(bool input) {
    assert(input != null);
    return Repostable._(
      validateRepostable(input),
    );
  }

  const Repostable._(this.value);
}

//RepostCount - the int count of reposts on a post, useful for displaying feedback and used as metric for recommendation
class RepostCount extends ValueObject<int> {
  final Either<ValueFailure<int>, int> value;

  factory RepostCount(int input) {
    assert(input != null);
    return RepostCount._(
      validateRepostCount(input),
    );
  }

  const RepostCount._(this.value);
}

//PostTimestamp - the Timestamp of when the post was uploaded, useful for sorting posts chronologically or potentially recommending posts (like count / time being uploaded)
class PostTime extends ValueObject<Timestamp> {
  final Either<ValueFailure<Timestamp>, Timestamp> value;

  factory PostTime(Timestamp input) {
    assert(input != null);
    return PostTime._(
      validateTime(input),
    );
  }

  const PostTime._(this.value);
}

//COMMENT: the entity that contains all information of a comment
//Not written below but still included: SenderID - user who posted the comment
class CommentID extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory CommentID(String input) {
    assert(input != null);
    return CommentID._(
      validateURL(input),
    );
  }

  const CommentID._(this.value);
}

//PostBody - the main body of text for the post, necessary for all posts
class CommentBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory CommentBody(String input) {
    assert(input != null);
    return CommentBody._(
      //runs two validators on input (CommentBody)
      validateMaxStringLength(input, maxLength).flatMap(
          (valueFromPreviousFunction) =>
              validateStringNotEmpty(valueFromPreviousFunction)),
    );
  }

  const CommentBody._(this.value);
}

//CommentTimestamp - the Timestamp of when the comment was uploaded
class CommentDate extends ValueObject<Timestamp> {
  final Either<ValueFailure<Timestamp>, Timestamp> value;

  factory CommentDate(Timestamp input) {
    assert(input != null);
    return CommentDate._(
      validateTime(input),
    );
  }

  const CommentDate._(this.value);
}
