import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_activity_service.dart';
import 'package:vybrnt_mvp/features/activity/repository/activity_dtos.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/services/org_dtos.dart';
import 'package:vybrnt_mvp/features/organization/services/org_list_dtos.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/i_post_repository.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';
import 'package:vybrnt_mvp/features/posts/infrastructure/posts/comment_dtos.dart';
import 'package:vybrnt_mvp/features/posts/infrastructure/posts/post_dtos.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/services/user_dtos.dart';

import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firestore;
  final IActivityService _activityService;

  PostRepository(this._firestore, this._activityService);

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchAll(
      String postCollectionID, bool isOrg) async* {
    String type;
    if (isOrg) {
      type = 'org';
    } else {
      type = 'user';
    }
    yield* postsRef
        .doc(postCollectionID)
        .collection(type + 'Posts')
        .orderBy('postTime', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<PostFailure, KtList<Post>>(
            snapshot.docs
                .map((doc) => PostDTO.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PostFailure, Unit>> delete(Post post) async {
    try {
      final ownerType = _getOwnerType(post);
      final ownerID = _getOwnerID(post);

      await postsRef
          .doc(ownerID)
          .collection(OwnerTypeHelper.stringOf(ownerType) + "Posts")
          .doc(post.postID.getOrCrash())
          .delete();

      Unit success;
      await likesRef.doc(post.postID.getOrCrash()).delete();
      await repostsRef.doc(post.postID.getOrCrash()).delete();
      await bookmarksRef.doc(post.postID.getOrCrash()).delete();
      return right(success);
    } catch (e) {
      print(e.toString());
      return left(PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> openPostDetail(Post post) {
    throw UnimplementedError();
  }

  @override
  Future<Either<PostFailure, Unit>> update(Post post) {
    throw UnimplementedError();
  }

  @override
  Future<Organization> getOrgProfile(String orgID) async {
    if (orgID.isEmpty) {
      return Organization.empty();
    }
    final orgDoc = await organizationsRef.doc(orgID).get();
    return OrgDto.fromFirestore(orgDoc).toDomain();
  }

  @override
  Future<User> getUserProfile(String userID) async {
    if (userID == "") {
      return User.empty();
    }
    final userDoc = await usersRef.doc(userID).get();

    if (userDoc.exists) {
      return UserDto.fromFirestore(userDoc).toDomain();
    }
    print("reached user doesn't exist");
    return User.empty();
  }

  @override
  bool isSignedInUsersPost(String currentUserID, Post post) {
    if (post.senderID.getOrCrash().compareTo(currentUserID) == 0) {
      return true;
    }
    return false;
  }

  @override
  Stream<Either<PostFailure, KtList<String>>> watchLikes(Post post) async* {
    yield* likesRef
        .doc(post.postID.getOrCrash())
        .collection('postLikes')
        .snapshots()
        .map((event) => right<PostFailure, KtList<String>>(
            event.docs.map((id) => id.id).toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<String>>> watchReposts(Post post) async* {
    yield* repostsRef
        .doc(post.postID.getOrCrash())
        .collection('postReposts')
        .snapshots()
        .map((event) => right<PostFailure, KtList<String>>(
            event.docs.map((id) => id.id).toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Comment>>> watchComments(Post post) async* {
    yield* commentsRef
        .doc(post.postID.getOrCrash())
        .collection('postComments')
        .orderBy('commentDate')
        .snapshots()
        .map((event) => right<PostFailure, KtList<Comment>>(event.docs
            .map((comment) => CommentDTO.fromFirestore(comment).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<String>>> watchBookmarks(Post post) async* {
    yield* bookmarksRef
        .doc(post.postID.getOrCrash())
        .collection('usersBookmarked')
        .snapshots()
        .map((event) => right<PostFailure, KtList<String>>(event.docs
            .map((bookmarkedPost) => bookmarkedPost.id)
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchPostBookmarks() async* {
    String currentUserID = await _firestore.currentUserID();

    yield* userBookmarksRef
        .doc(currentUserID)
        .collection('savedPosts')
        .orderBy('postTime', descending: true)
        .snapshots()
        .map((event) => right<PostFailure, KtList<Post>>(event.docs
            .map((doc) => PostDTO.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PostFailure, Unit>> like(
      String currentUserID, Post post) async {
    try {
      Unit success;

      likesRef
          .doc(post.postID.getOrCrash())
          .collection('postLikes')
          .doc(currentUserID)
          .set({});
      await _activityService.addLikeToActivityFeed(post);
      return right(success);
    } catch (e) {
      return left(PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> unlike(
      String currentUserID, Post post) async {
    try {
      Unit success;
      likesRef
          .doc(post.postID.getOrCrash())
          .collection('postLikes')
          .doc(currentUserID)
          .delete();

      // removeLikeFromActivityFeed(post);

      return right(success);
    } catch (e) {
      return left(PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> repost(
      String currentUserID, Post post) async {
    Unit success;
    try {
      String newRepostID =
          postsRef.doc(currentUserID).collection('userPosts').doc().id;

      repostsRef
          .doc(post.postID.getOrCrash())
          .collection('postReposts')
          .doc(currentUserID)
          .set({'repostID': newRepostID});

      postsRef.doc(currentUserID).collection('userPosts').doc(newRepostID).set(
          PostDTO.fromDomain(post.copyWith(repostID: RepostID(currentUserID)))
              .toJson());

      await _activityService.addRepostToActivityFeed(post, newRepostID);

      return right(success);
    } catch (e) {
      return left(PostFailure.unexpected());
    }
  }

  @override
  Stream<Either<PostFailure, KtList<OrgList>>> getAdmins(
      String currentUserID) async* {
    yield* usersRef
        .doc(currentUserID)
        .collection('adminAccess')
        .snapshots()
        .map(
          (snapshot) => right<PostFailure, KtList<OrgList>>(
            snapshot.docs
                .map((doc) => OrgListDto.fromFirestore(doc).toDomain())
                .toImmutableList()
                .toMutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<KtList<String>> getAdminIDs(String currentUserID) async* {
    yield* usersRef
        .doc(currentUserID)
        .collection('adminAccess')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => doc.id)
              .toImmutableList()
              .toMutableList(),
        );
  }

  @override
  Future<Either<PostFailure, Unit>> unrepost(
      String currentUserID, Post post) async {
    try {
      Unit success;

      DocumentSnapshot ds = await repostsRef
          .doc(post.postID.getOrCrash())
          .collection('postReposts')
          .doc(currentUserID)
          .get();

      String repostID = ds.get('repostID');

      repostsRef
          .doc(post.postID.getOrCrash())
          .collection('postReposts')
          .doc(currentUserID)
          .delete();
      postsRef
          .doc(currentUserID)
          .collection('userPosts')
          .doc(repostID)
          .delete();

      //await removeRepostFromActivityFeed(post, repostID);

      return right(success);
    } catch (e) {
      return left(PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> bookmark(
      String currentUserID, Post post) async {
    Unit success;
    try {
      bookmarksRef
          .doc(post.postID.getOrCrash())
          .collection('usersBookmarked')
          .doc(currentUserID)
          .set({});

      userBookmarksRef
          .doc(currentUserID)
          .collection("savedPosts")
          .doc(post.postID.getOrCrash())
          .set(PostDTO.fromDomain(post).toJson());
      return right(success);
    } catch (e) {
      return left(PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> unbookmark(
      String currentUserID, Post post) async {
    Unit success;
    try {
      bookmarksRef
          .doc(post.postID.getOrCrash())
          .collection('usersBookmarked')
          .doc(currentUserID)
          .delete();
      userBookmarksRef
          .doc(currentUserID)
          .collection("savedPosts")
          .doc(post.postID.getOrCrash())
          .delete();
      return right(success);
    } catch (e) {
      return left(PostFailure.unexpected());
    }
  }

  @override
  Future<String> uploadPostImage(File imageFile) async {
    String eventImageId = Uuid().v4();
    File image = await compressImage(eventImageId, imageFile);
    StorageUploadTask uploadTask = storageRef
        .child('images/events/event_$eventImageId.jpg')
        .putFile(image);
    StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
    String downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<File> compressImage(String imageID, File image) async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    File compressedImageFile = await FlutterImageCompress.compressAndGetFile(
        image.absolute.path, '$path/img_$imageID.jpg',
        quality: 70);
    return compressedImageFile;
  }

  @override
  Future<Either<PostFailure, Unit>> createComment(
      Post post, Comment comment) async {
    final currentUserID = await _firestore.currentUserID();
    try {
      String newCommentID = commentsRef
          .doc(post.postID.getOrCrash())
          .collection('postComments')
          .doc()
          .id;
      final newComment = comment.copyWith(
          commentID: CommentID(newCommentID),
          senderID: SenderID(currentUserID));
      final commentDTO = CommentDTO.fromDomain(newComment);
      await commentsRef
          .doc(post.postID.getOrCrash())
          .collection('postComments')
          .doc(newComment.commentID.getOrCrash())
          .set(commentDTO.toJson());

      await _activityService.addCommentToActivityFeed(post, newComment);

      return right(unit);
    } on FirebaseException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> deleteComment(
      Post post, Comment comment) async {
    try {
      await commentsRef
          .doc(post.postID.getOrCrash())
          .collection('postComments')
          .doc(comment.commentID.getOrCrash())
          .delete();

      //await removeCommentFromActivityFeed(post, comment);
      return right(unit);
    } on FirebaseException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> create(
      {@required Post post,
      @required List<String> categories,
      @required String orgID}) async {
    try {
      final currentUserID = await _firestore.currentUserID();
      String newPostID =
          postsRef.doc(currentUserID).collection('userPosts').doc().id;

      if (orgID.isEmpty || orgID.contains("Empty")) {
        //idk about this line chief
        final postDTO =
            PostDTO.fromDomain(post.copyWith(postType: PostType("user")));

        await postsRef
            .doc(currentUserID)
            .collection('userPosts')
            .doc(newPostID)
            .set(postDTO.toJson());
        for (int i = 0; i < categories.length; i++) {
          await categoriesRef
              .doc(categories[i])
              .collection('posts')
              .doc(newPostID)
              .set(postDTO.toJson());
        }
      } else {
        final postDTO =
            PostDTO.fromDomain(post.copyWith(postType: PostType("org")));

        await postsRef
            .doc(orgID)
            .collection('orgPosts')
            .doc(newPostID)
            .set(postDTO.toJson());
        for (int i = 0; i < categories.length; i++) {
          await categoriesRef
              .doc(categories[i])
              .collection('posts')
              .doc(newPostID)
              .set(postDTO.toJson());
        }
      }
      await _activityService
          .addPostToActivityFeed(post.copyWith(postID: PostID(newPostID)));
      return right(unit);
    } on FirebaseException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Post> getPost({String postID, String type, String typeID}) async {
    DocumentSnapshot postDoc;

    postDoc =
        await postsRef.doc(typeID).collection(type + 'Posts').doc(postID).get();

    return PostDTO.fromFirestore(postDoc).toDomain();
  }
}

String _getOwnerID(Post post) {
  String ownerID = post.repostID.getOrCrash().isNotEmpty
      ? post.repostID.getOrCrash()
      : post.orgID.getOrCrash().isNotEmpty
          ? post.orgID.getOrCrash()
          : post.senderID.getOrCrash();
  return ownerID;
}

OwnerType _getOwnerType(Post post) {
  OwnerType ownerType = post.repostID.getOrCrash().isNotEmpty
      ? OwnerType.USER
      : post.orgID.getOrCrash().isEmpty
          ? OwnerType.USER
          : OwnerType.ORG;
  return ownerType;
}
