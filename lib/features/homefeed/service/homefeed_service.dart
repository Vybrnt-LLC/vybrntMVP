import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/services/event_dtos.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/i_homefeed_service.dart';
import 'package:vybrnt_mvp/features/posts/domain/core/failures.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';
import 'package:vybrnt_mvp/features/posts/infrastructure/posts/post_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IHomeFeedService)
class HomeFeedService implements IHomeFeedService {
  final FirebaseFirestore _firestore;

  final StreamController<Either<PostFailure, KtList<Post>>> _postsController =
      StreamController<Either<PostFailure, KtList<Post>>>.broadcast();

  // #6: Create a list that will keep the paged results
  List<KtList<Post>> _allPagedResults = List<KtList<Post>>();

  static const int PostsLimit = 20;

  DocumentSnapshot _lastDocument;
  bool _hasMorePosts = true;

  HomeFeedService(this._firestore);

  @override
  Stream<Either<EventFailure, KtList<Event>>> watchUpcomingEvents() async* {
    final currentUserID = await _firestore.currentUserID();
    yield* eventFeedRef
        .doc(currentUserID)
        .collection('userEventFeed')
        .where('endTime', isGreaterThanOrEqualTo: Timestamp.now())
        .orderBy('endTime')
        .snapshots()
        .map(
          (snapshot) => right<EventFailure, KtList<Event>>(
            snapshot.docs
                .map((doc) => EventDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchPostFeed() async* {
    final currentUserID = await _firestore.currentUserID();
    //yield* _postsController.stream;
    yield* feedsRef
        .doc(currentUserID)
        .collection('userFeed')
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
        debugPrint(e.toString());
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchPostFeedPaginated(
      String currentUserID) {
    // Register the handler for when the posts data changes

    _requestPosts(currentUserID);

    return _postsController.stream;
  }

  // #1: Move the request posts into it's own function
  void _requestPosts(String currentUserID) {
    Either<PostFailure, KtList<Post>> updatedPosts;
    // #2: split the query from the actual subscription
    try {
      var pagePostsQuery = feedsRef
          .doc(currentUserID)
          .collection('userFeed')
          .orderBy('postTime', descending: true)
          // #3: Limit the amount of results
          .limit(PostsLimit);

      // #5: If we have a document start the query after it
      if (_lastDocument != null) {
        pagePostsQuery = pagePostsQuery.startAfterDocument(_lastDocument);
      }

      if (!_hasMorePosts) return;

      // #7: Get and store the page index that the results belong to
      var currentRequestIndex = _allPagedResults.length;

      pagePostsQuery.snapshots().listen((postsSnapshot) {
        if (postsSnapshot.docs.isNotEmpty) {
          var posts = postsSnapshot.docs
              .map((doc) => PostDTO.fromFirestore(doc).toDomain())
              .where((mappedItem) => mappedItem.postTime != null)
              .toImmutableList();

          // #8: Check if the page exists or not
          var pageExists = currentRequestIndex < _allPagedResults.length;

          // #9: If the page exists update the posts for that page
          if (pageExists) {
            _allPagedResults[currentRequestIndex] = posts;
          }
          // #10: If the page doesn't exist add the page data
          else {
            _allPagedResults.add(posts);
          }

          // #11: Concatenate the full list to be shown
          var allPosts = _allPagedResults.fold<List<Post>>(
              List<Post>(),
              (initialValue, pageItems) =>
                  initialValue..addAll(pageItems.iter));

          updatedPosts = right(allPosts.kt);

          // #12: Broadcase all posts
          _postsController.add(updatedPosts);
          // #13: Save the last document from the results only if it's the current last page
          if (currentRequestIndex == _allPagedResults.length - 1) {
            _lastDocument = postsSnapshot.docs.last;
          }

          // #14: Determine if there's more posts to request
          _hasMorePosts = posts.size == PostsLimit;
        }
      });
    } catch (e) {
      updatedPosts = left(const PostFailure.unexpected());
      _postsController.add(updatedPosts);
    }
  }

  @override
  Stream<Either<EventFailure, KtList<Event>>> watchCategoriesUpcomingEvents(
      String documentName) async* {
    yield* categoriesRef
        .doc(documentName)
        .collection('events')
        .where('endTime', isGreaterThanOrEqualTo: Timestamp.now())
        .orderBy('endTime')
        .snapshots()
        .map(
          (snapshot) => right<EventFailure, KtList<Event>>(
            snapshot.docs
                .map((doc) => EventDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchCategoriesPostFeed(
      String documentName) async* {
    yield* categoriesRef
        .doc(documentName)
        .collection('posts')
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
  void requestMoreData(String currentUserID) => _requestPosts(currentUserID);

  @override
  void resetPostList() {
    _allPagedResults = List.empty(growable: true);
    _lastDocument = null;
    _hasMorePosts = true;
  }
}
