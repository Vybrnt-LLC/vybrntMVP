import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';

import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';

import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/services/user_dtos.dart';

import '../../../core/shared/constants.dart';

class DatabaseService {
  final String id;
  DatabaseService({this.id});

  static void updateUser(User user) {
    usersRef.doc(user.userID.getOrCrash()).update({
      'profieName': user.profileName,
      'userName': user.userName,
      'profileImageUrl': user.profileImageUrl,
      // 'major': user.major,
      'bio': user.bio,
      'email': user.email,
      //'userStaff': user.userStaff,
      // 'userStudent': user.userStudent,
      'bannerImageUrl': user.bannerImageUrl,
      'primaryColor': user.primaryColor,
      'secondaryColor': user.secondaryColor
    });
  }

  static void updateUserColors(User user) {
    usersRef.doc(user.userID.getOrCrash()).update({
      'primaryColor': user.primaryColor,
    });
  }

  // static void inputTags(String userID, Map userInfo) {
  //   final _firestore = Firestore.instance;

  //   //Map information = {"Major": List<Option>(), "Race": List<Option>(), "Ethnicity": List<Option>(), "Gender": List<Option>(), "Sexuality": List<Option>(), "Interests": List<Option>()};
  //   //print()

  //   _firestore.collection('/tags').doc(userID).set({
  //     'majors': userInfo['Major'],
  //     'race': userInfo['Race'],
  //     'ethnicity': userInfo['Ethnicity'],
  //     'gender': userInfo['Gender'],
  //     'sexuality': userInfo['Sexuality'],
  //     'interests': userInfo['Interests']
  //   });
  // }

  static Future<QuerySnapshot> searchUsers(String name) {
    Future<QuerySnapshot> users =
        usersRef.where('profileName', isGreaterThanOrEqualTo: name).get();
    return users;
  }

  static Future<QuerySnapshot> searchOrgs(String name) {
    Future<QuerySnapshot> orgs =
        organizationsRef.where('name', isGreaterThanOrEqualTo: name).get();
    return orgs;
  }

  // static void createPost(Post post) {
  //   postsRef.doc(post.senderID).collection('usersPosts').add({
  //     'header': post.header,
  //     'description': post.description,
  //     'name': post.name,
  //     'senderID': post.senderID,
  //     'time': post.time,
  //     'likes': post.likes,
  //     'likeCount': post.likeCount,
  //     'imageUrl': post.imageUrl
  //   });
  // }

  static void createPhoto(Photo photo) {
    photosRef.doc(photo.senderID).collection('userPhotos').add({
      'description': photo.description,
      'senderID': photo.senderID,
      'time': photo.time,
      'likes': photo.likes,
      'imageUrl': photo.imageUrl
    });
  }

  static void followUser({String currentUserID, String userID}) {
    // Add user to current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('userFollowing')
        .doc(userID)
        .set({});
    // Add current user to user's followers collection
    followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .set({});
  }

  static void unfollowUser({String currentUserID, String userID}) {
    // Remove user from current user's following collection
    followingRef
        .doc(currentUserID)
        .collection('userFollowing')
        .doc(userID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
    // Remove current user from user's followers collection
    followersRef
        .doc(currentUserID)
        .collection('userFollowers')
        .doc(currentUserID)
        .get()
        .then((doc) {
      if (doc.exists) {
        doc.reference.delete();
      }
    });
  }

  static Future<bool> isFollowingUser(
      {String currentUserID, String userID}) async {
    DocumentSnapshot followingDoc = await followersRef
        .doc(userID)
        .collection('userFollowers')
        .doc(currentUserID)
        .get();
    return followingDoc.exists;
  }

  static Future<int> numFollowing(String userID) async {
    QuerySnapshot followingSnapshot =
        await followingRef.doc(userID).collection('userFollowing').get();
    return followingSnapshot.docs.length;
  }

  static Future<int> numFollowers(String userID) async {
    QuerySnapshot followersSnapshot =
        await followersRef.doc(userID).collection('userFollowers').get();
    return followersSnapshot.docs.length;
  }

  // static Future<List<Post>> getFeedPosts(String userID) async {
  //   // QuerySnapshot feedSnapshot = await feedsRef
  //   //     .doc(userId)
  //   //     .collection('userFeed')
  //   //     .orderBy('timestamp', descending: true)
  //   //    .get();
  //   // List<Post> posts =
  //   //     feedSnapshot.docs.map((doc) => Post.fromDoc(doc)).toList();

  //   QuerySnapshot testSnapshot = await postsRef
  //       .doc(userID)
  //       .collection('usersPosts')
  //       .orderBy('time', descending: true)
  //     .get();
  //   List<Post> posts =
  //       testSnapshot.docs.map((doc) => Post.fromDoc(doc)).toList();
  //   return posts;
  // }

  static Future<User> getUserWithID(String userID) async {
    DocumentSnapshot userDocSnapshot = await usersRef.doc(userID).get();
    if (userDocSnapshot.exists) {
      return UserDto.fromFirestore(userDocSnapshot)
          .toDomain(); //User.fromDoc(userDocSnapshot);
    }
    return User.empty();
  }

  // static Future<List<Post>> getUserPosts(String userID) async {
  //   QuerySnapshot userPostsSnapshot = await postsRef
  //       .doc(userID)
  //       .collection('usersPosts')
  //       .orderBy('time', descending: true)
  //     .get();
  //   List<Post> posts =
  //       userPostsSnapshot.docs.map((doc) => Post.fromDoc(doc)).toList();
  //   return posts;
  // }

  static Future<List<Photo>> getUserPhotos(String userID) async {
    QuerySnapshot userPhotosSnapshot = await photosRef
        .doc(userID)
        .collection('userPhotos')
        .orderBy('time', descending: true)
        .get();
    List<Photo> photos =
        userPhotosSnapshot.docs.map((doc) => Photo.fromDoc(doc)).toList();
    return photos;
  }

  // static void likePost({String currentUserID, Post post}) {
  //   DocumentReference postRef = postsRef
  //       .doc(post.senderID)
  //       .collection('usersPosts')
  //       .doc(post.postID);
  //   postRef.get().then((doc) {
  //     int likeCount = doc.data.get('likeCount');
  //     postRef.update({'likeCount': likeCount + 1});
  //     likesRef
  //         .doc(post.postID)
  //         .collection('postLikes')
  //         .doc(currentUserID)
  //         .set({});
  //   });
  // }

  // static void unlikePost({String currentUserID, Post post}) {
  //   DocumentReference postRef = postsRef
  //       .doc(post.senderID)
  //       .collection('usersPosts')
  //       .doc(post.postID);
  //   postRef.get().then((doc) {
  //     int likeCount = doc.data['likeCount'];
  //     postRef.update({'likeCount': likeCount - 1});
  //     likesRef
  //         .doc(post.postID)
  //         .collection('postLikes')
  //         .doc(currentUserID)
  //         .get()
  //         .then((doc) {
  //       if (doc.exists) {
  //         doc.reference.delete();
  //       }
  //     });
  //   });
  // }

  // static Future<bool> didLikePost({String currentUserID, Post post}) async {
  //   DocumentSnapshot userDoc = await likesRef
  //       .doc(post.postID)
  //       .collection('postLikes')
  //       .doc(currentUserID)
  //       .get();
  //   return userDoc.exists;
  // }

  // static void commentOnPost({String currentUserID, Post post, String comment}) {
  //   commentsRef.doc(post.postID).collection('postComments').add({
  //     'content': comment,
  //     'senderID': currentUserID,
  //     'time': Timestamp.fromDate(DateTime.now()),
  //   });
  //   addActivityItem(currentUserID: currentUserID, post: post, comment: comment);
  // }

  // static void addActivityItem(
  //     {String currentUserID, Post post, String comment}) {
  //   if (currentUserID != post.postID) {
  //     activitiesRef.doc(post.senderID).collection('userActivities').add({
  //       'fromUserID': currentUserID,
  //       'postID': post.postID,
  //       'postImageUrl': post.imageUrl,
  //       'comment': comment,
  //       'time': Timestamp.fromDate(DateTime.now()),
  //     });
  //   }
  // }

  // static Future<List<Activity>> getActivities(String userID) async {
  //   QuerySnapshot userActivitiesSnapshot = await activitiesRef
  //       .doc(userID)
  //       .collection('userActivities')
  //       .orderBy('time', descending: true)
  //     .get();
  //   List<Activity> activity = userActivitiesSnapshot.docs
  //       .map((doc) => Activity.fromDoc(doc))
  //       .toList();
  //   return activity;
  // }

  // static Future<Post> getUserPost(String userID, String postID) async {
  //   DocumentSnapshot postDocSnapshot = await postsRef
  //       .doc(userID)
  //       .collection('usersPosts')
  //       .doc(postID)
  //       .get();
  //   return Post.fromDoc(postDocSnapshot);
  // }

  // collection reference
  // final CollectionReference brewCollection =
  //     Firestore.instance.collection('brews');

  // Future updateUser(User user) async {
  //   return await brewCollection.doc(id).set({
  //     'sugars': sugars,
  //     'name': name,
  //     'strength': strength,
  //   });
  // }

  /*

  // brew list from snapshot
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Brew(
          name: doc.data['name'] ?? '',
          strength: doc.data['strength'] ?? 0,
          sugars: doc.data['sugars'] ?? '0');
    }).toList();
  }

  // userData from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid,
        name: snapshot.data['name'],
        strength: snapshot.data['strength'],
        sugars: snapshot.data['sugars']);
  }

  // get brews stream
  Stream<List<Brew>> get brews {
    return brewCollection.snapshots().map(_brewListFromSnapshot);
  }

  //get user doc stream
  Stream<UserData> get userData {
    return brewCollection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
  */
}
