import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/services/event_dtos.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/i_homefeed_service.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';
import 'package:vybrnt_mvp/features/posts/infrastructure/posts/post_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IHomeFeedService)
class HomeFeedService implements IHomeFeedService {
  final FirebaseFirestore _firestore;

  DocumentSnapshot _lastDocument;
  List<List<Post>> _allPagedResults = List<List<Post>>();
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
    //_requestPosts(currentUserID);
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
        print(e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  // void _requestPosts(String currentUserID) {
  //   // #2: split the query from the actual subscription

  //   var pagePostsQuery = feedsRef
  //       .doc(currentUserID)
  //       .collection('userFeed')
  //       .orderBy('postTime', descending: true)
  //       // #3: Limit the amount of results
  //       .limit(10);

  //   if (_lastDocument != null) {
  //     pagePostsQuery = pagePostsQuery.startAfterDocument(_lastDocument);
  //   }

  //   // If there's no more posts then bail out of the function
  //   if (!_hasMorePosts) return;

  //   var currentRequestIndex = _allPagedResults.length;

  //   pagePostsQuery.snapshots().listen((postsSnapshot) {
  //     if (postsSnapshot.docs.isNotEmpty) {
  //       var posts = postsSnapshot
  //       .map(
  //         (snapshot) => right<PostFailure, KtList<Post>>(
  //           snapshot.docs
  //               .map((doc) => PostDTO.fromFirestore(doc).toDomain())
  //               .toImmutableList(),
  //         ),
  //       )
  //       .onErrorReturnWith((e) {
  //     if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
  //       return left(const PostFailure.insufficientPermissions());
  //     } else {
  //       print(e);
  //       return left(const PostFailure.unexpected());
  //     }
  //   });
  //       .docs
  //           .map(
  //         (doc) =>
  //           PostDTO.fromFirestore(doc).toDomain()).where((mappedItem) => mappedItem.postTime != null)
  //               .toImmutableList();

  //       )
  //           .onErrorReturnWith((e) {
  //         if (e is FirebaseException &&
  //             e.message.contains('PERMISSION_DENIED')) {
  //           return left(const PostFailure.insufficientPermissions());
  //         } else {
  //           print(e);
  //           return left(const PostFailure.unexpected());
  //         }
  //       });

  //       _postsController.add(posts);
  //     }
  //   });
  // }

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
}
