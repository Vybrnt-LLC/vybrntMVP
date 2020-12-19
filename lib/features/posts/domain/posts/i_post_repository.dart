import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

abstract class IPostRepository {
  //Read Methods
  //watch notes

  //watch uncompleted notes

  // CUD
  Future<Organization> getOrgProfile(String orgID);
  Future<User> getUserProfile(String userID);

  Stream<Either<PostFailure, KtList<Post>>> watchAll(
      String postCollectionID, bool isOrg);

  Future<Either<PostFailure, Unit>> create(
      {@required Post post,
      @required List<String> categories,
      @required String orgID});

  Future<Either<PostFailure, Unit>> createComment(Post post, Comment comment);

  Future<Either<PostFailure, Unit>> deleteComment(Post post, Comment comment);

  Future<Either<PostFailure, Unit>> update(Post post);
  Future<Either<PostFailure, Unit>> delete(Post post);

  bool isSignedInUsersPost(String currentUserID, Post post);

  Stream<Either<PostFailure, KtList<OrgList>>> getAdmins(String currentUserID);
  Stream<KtList<String>> getAdminIDs(String currentUserID);
  Stream<Either<PostFailure, KtList<String>>> watchLikes(Post post);
  Stream<Either<PostFailure, KtList<String>>> watchReposts(Post post);
  Stream<Either<PostFailure, KtList<Comment>>> watchComments(Post post);
  Stream<Either<PostFailure, KtList<String>>> watchBookmarks(Post post);
  Stream<Either<PostFailure, KtList<Post>>> watchPostBookmarks();

  Future<String> uploadPostImage(File imageFile);

  Future<Either<PostFailure, Unit>> like(String currentUserID, Post post);
  Future<Either<PostFailure, Unit>> unlike(String currentUserID, Post post);
  Future<Either<PostFailure, Unit>> repost(String currentUserID, Post post);
  Future<Either<PostFailure, Unit>> unrepost(String currentUserID, Post post);
  Future<Either<PostFailure, Unit>> bookmark(String currentUserID, Post post);
  Future<Either<PostFailure, Unit>> unbookmark(String currentUserID, Post post);
  Future<Either<PostFailure, Unit>> openPostDetail(Post post);

  Future<Post> getPost({String postID, String type, String typeID});
}
